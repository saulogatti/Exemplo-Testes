// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  static const title = 'Example: Logging';

  const App({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp(title: title, home: ChatPage());
}

class ChatPage extends StatelessWidget {
  final _provider = SimpleEchoProvider();
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(App.title)),
      body: LlmChatView(provider: _provider, messageSender: _logMessage),
    );
  }

  Stream<String> _logMessage(
    String prompt, {
    required Iterable<Attachment> attachments,
  }) async* {
    // log the message and attachments
    debugPrint('# Sending Message');
    debugPrint('## Prompt\n$prompt');
    debugPrint('## Attachments\n${attachments.map((a) => a.toString())}');

    // forward the message on to the provider
    final response = _provider.sendMessageStream(
      prompt,
      attachments: attachments,
    );

    // log the response
    final text = response.join();
    debugPrint('## Response\n$text');
  }
}

class SimpleEchoProvider extends LlmProvider with ChangeNotifier {
  final List<ChatMessage> _history;

  SimpleEchoProvider({Iterable<ChatMessage>? history})
    : _history = List<ChatMessage>.from(history ?? []);

  @override
  Iterable<ChatMessage> get history => _history;

  @override
  set history(Iterable<ChatMessage> history) {
    _history.clear();
    _history.addAll(history);
    notifyListeners();
  }

  @override
  Stream<String> generateStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
  }) async* {
    yield 'prompt: $prompt\n';
    yield 'attachments: ${attachments.isEmpty ? '[]' : attachments.map((a) => a.toString())}';
  }

  @override
  Stream<String> sendMessageStream(
    String prompt, {
    Iterable<Attachment> attachments = const [],
  }) async* {
    final userMessage = ChatMessage.user(prompt, attachments);
    final llmMessage = ChatMessage.llm();
    _history.addAll([userMessage, llmMessage]);
    final chunks = generateStream(prompt, attachments: attachments);
    await for (final chunk in chunks) {
      llmMessage.append(chunk);
      yield chunk;
    }
    notifyListeners();
  }
}
