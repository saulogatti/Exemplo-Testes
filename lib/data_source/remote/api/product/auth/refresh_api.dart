import 'package:testenovo/data_source/entry/login_entry/token_entry.dart';
import 'package:testenovo/data_source/remote/api/api.dart';
import 'package:testenovo/data_source/remote/method/http_method.dart';

/// API para atualizar o token de acesso
/// O token de acesso é atualizado automaticamente a cada 60 minutos por padrão. Pode ser enviado outro valor para personalizar o tempo de expiração.
/// Se o token de acesso expirar, a API retorna um erro 401.
/// Se o token de acesso for atualizado, a API retorna um novo token de acesso. O novo token de acesso é salvo no cookie do navegador.
class RefreshApi extends Api<TokenEntry, Map<String, dynamic>> {
  static const String refresh = '/auth/refresh';
  final String refreshToken;
  final int expiresInMins;
  RefreshApi({required this.refreshToken, this.expiresInMins = 60});
  @override
  HttpMethod getMethod() {
    return Post(
      path: refresh,
      body: {'refreshToken': refreshToken, 'expiresInMins': expiresInMins},
    );
  }

  @override
  TokenEntry parseResponse(Map<String, dynamic> data) {
    final tokenEntry = TokenEntry.fromJson(data);
    tokenEntry.expiresInMins = expiresInMins;
    return tokenEntry;
  }
}
