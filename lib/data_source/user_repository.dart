import 'package:testenovo/data_source/source/i_user_data_source.dart';
import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/domain/repository/i_user_repository.dart';
import 'package:testenovo/utils/data_result.dart';

/// Implementação do repositório de usuários.
/// Ele utiliza uma fonte de dados para buscar e salvar informações de usuários.
///
class UserRepository implements IUserRepository {
  final IUserDataSource _dataSource;
  UserRepository(this._dataSource);
  @override
  Future<DataResult<List<UserModel>, String>> getAllUsers() async {
    // Simula uma chamada de API ou consulta ao banco de dados
    final result = await _dataSource.getAllUsers();
    switch (result) {
      case Success(:final data):
        return Success(
          data.users
              .map(
                (e) =>
                    UserModel(id: e.id, firstName: e.firstName, email: e.email),
              )
              .toList(),
        );
      case Failure(:final error):
        return Failure('Erro ao buscar usuários: $error');
    }
  }

  @override
  Future<DataResult<UserModel, String>> getUserById(int id) async {
    // Simula uma chamada de API ou consulta ao banco de dados
    try {
      final result = await _dataSource.getUserById(id);
      switch (result) {
        case Success(:final data):
          final user = UserModel(
            id: data.id,
            firstName: data.firstName,
            email: data.email,
          );
          return Success(user);
        case Failure(:final error):
          return Failure('Erro ao buscar usuário: $error');
      }
    } catch (e) {
      return Failure('Exceção ao buscar usuário: $e');
    }
  }

  @override
  Future<DataResult<String, String>> getUserNameById(int userId) {
    // TODO: implement getUserNameById
    throw UnimplementedError();
  }

  @override
  Future<DataResult<void, String>> saveUserName(int userId, String userName) {
    // TODO: implement saveUserName
    throw UnimplementedError();
  }
}
