import 'package:testenovo/domain/data_repository/i_data_repository.dart';
import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/screen/repository/i_user_repository.dart';
import 'package:testenovo/utils/data_result.dart';

class UserRepository implements IUserRepository {
  final IUserDataRepository _dataSource;
  UserRepository(this._dataSource);
  @override
  Future<List<UserModel>> getAllUsers() async {
    // Simula uma chamada de API ou consulta ao banco de dados
    final result = await _dataSource.getAllUsers();
    switch (result) {
      case Success(:final data):
        return data.users
            .map(
              (e) =>
                  UserModel(id: e.id, firstName: e.firstName, email: e.email),
            )
            .toList();
      case Failure(:final error):
        throw Exception('Erro ao buscar usuários: $error');
    }
  }

  @override
  Future<UserModel?> getUserById(int id) async {
    // Simula uma chamada de API ou consulta ao banco de dados
    await Future.delayed(Duration(seconds: 1)); // Simula um atraso

    // Retorna um usuário fictício para demonstração
    return UserModel(id: id, firstName: 'John', email: 'john@example.com');
  }

  @override
  Future<String> getUserNameById(int userId) {
    // TODO: implement getUserNameById
    throw UnimplementedError();
  }

  @override
  Future<void> saveUserName(int userId, String userName) {
    // TODO: implement saveUserName
    throw UnimplementedError();
  }
}
