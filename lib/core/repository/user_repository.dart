import 'package:testenovo/core/models/user/user_model.dart';
import 'package:testenovo/data/source/user_data_source.dart';
import 'package:testenovo/utils/data_result.dart';

class UserRepository {
  final UserDataSource _dataSource;
  UserRepository(this._dataSource);
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

  Future<UserModel?> getUserById(int id) async {
    // Simula uma chamada de API ou consulta ao banco de dados
    await Future.delayed(Duration(seconds: 1)); // Simula um atraso

    // Retorna um usuário fictício para demonstração
    return UserModel(id: id, firstName: 'John', email: 'john@example.com');
  }
}
