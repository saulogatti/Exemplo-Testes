/// Representa uma requisição HTTP do tipo GET.
/// [queryParameters] são os parâmetros de consulta da requisição.
class Get extends HttpMethod {
  final Map<String, String>? queryParameters;
  const Get({required super.path, this.queryParameters});
}

/// lib/data/remote/method/http_method.dart
/// Define os métodos HTTP disponíveis para requisições.
sealed class HttpMethod {
  final String path;
  const HttpMethod({required this.path});
}

/// Representa uma requisição HTTP do tipo POST.
/// [body] é o corpo da requisição.
class Post extends HttpMethod {
  final Object? body;
  const Post({required super.path, this.body});
}
