import 'package:flutter/material.dart';
import 'package:testenovo/di/app_injection.dart';
import 'package:testenovo/utils/a.dart';
import 'package:testenovo/utils/b.dart';

void main() {
  callPrivateMethod(B());
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Novo SDK Test',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      routerConfig: appRoute.config(),
    );
  }
}
 


