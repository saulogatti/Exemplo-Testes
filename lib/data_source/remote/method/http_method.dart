import 'package:testenovo/data_source/remote/utils/content_type.dart';

/// Representa uma requisição HTTP do tipo GET.
/// [queryParameters] são os parâmetros de consulta da requisição.
class Get extends HttpMethod {
  final Map<String, String>? queryParameters;
  const Get({
    required super.path,
    this.queryParameters,
    super.contentType = ContentType.json,
    super.extras,
    super.headers,
  });
}

/// lib/data/remote/method/http_method.dart
/// Define os métodos HTTP disponíveis para requisições.
sealed class HttpMethod {
  /// O caminho da requisição.
  final String path;

  /// O tipo de conteúdo da requisição.
  final ContentType contentType;

  /// Parâmetros extras da requisição. Não são enviados para o servidor.
  /// Apenas para uso interno.
  final Map<String, String>? extras;

  /// Cabeçalhos adicionais da requisição.
  /// Nâo é permitido a chave Authorization aqui. Isso é gerenciado internamente.
  final Map<String, String>? headers;
  const HttpMethod({
    required this.path,
    this.contentType = ContentType.json,
    this.extras,
    this.headers,
  });
}

/// Representa uma requisição HTTP do tipo POST.
/// [body] é o corpo da requisição.
class Post extends HttpMethod {
  final Object? body;
  const Post({
    required super.path,
    this.body,
    super.contentType = ContentType.json,
    super.extras,
    super.headers,
  });
}
