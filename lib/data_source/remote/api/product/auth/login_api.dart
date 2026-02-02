import 'package:testenovo/data_source/entry/login_entry/login_entry.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

/// API para fazer login no sistema
/// O login é feito com o username e a senha.
/// O token de acesso é salvo no cookie do navegador.
/// O token de atualização é salvo no cookie do navegador.
/// [expiresInMins] é o tempo de expiração do token de acesso em minutos.
/// O valor padrão é 60 minutos.
/// Pode ser enviado outro valor para personalizar o tempo de expiração.
/// Se o token de acesso expirar, a API retorna um erro 401.
/// Se o token de acesso for atualizado, a API retorna um novo token de acesso. O novo token de acesso é salvo no cookie do navegador.
class LoginApi extends Api<LoginEntry, Map<String, dynamic>> {
  static const String login = '/auth/login';
  final String username;
  final String password;
  final int expiresInMins;
  LoginApi({
    required this.username,
    required this.password,
    this.expiresInMins = 60,
  });
  @override
  HttpMethod getMethod() {
    return Post(
      path: login,
      body: {
        'username': username,
        'password': password,
        'expiresInMins': expiresInMins,
      },
    );
  }

  @override
  LoginEntry parseResponse(Map<String, dynamic> data) {
    final loginEntry = LoginEntry.fromJson(data);
    loginEntry.expiresInMins = expiresInMins;
    return loginEntry;
  }
}
