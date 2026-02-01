import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/utils/data_result.dart';

/// Contrato do repositório de usuários.
/// Define os métodos que devem ser implementados para buscar e salvar informações de usuários.
/// Sempre deve retornar um [DataResult] contendo o resultado da operação.
/// quando a operação for bem-sucedida, o [DataResult] conterá os dados solicitados.
/// quando a operação falhar, o [DataResult] conterá uma mensagem de erro.
/// Em nenhum caso o repositório deve lançar exceções diretamente. Todas as falhas devem ser encapsuladas no [DataResult]. Nenhum objeto nulo deve ser retornado.
abstract interface class IUserRepository {
  Future<DataResult<List<UserModel>, String>> getAllUsers();
  Future<DataResult<UserModel, String>> getUserById(int id);
  Future<DataResult<String, String>> getUserNameById(int userId);
  Future<DataResult<void, String>> saveUserName(int userId, String userName);
}
