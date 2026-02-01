import 'package:flutter_test/flutter_test.dart';
import 'package:testenovo/data_source/entry/user_entry/list_users.dart';
import 'package:testenovo/data_source/entry/user_entry/user_entry.dart';
import 'package:testenovo/data_source/source/i_user_data_source.dart';
import 'package:testenovo/utils/data_result.dart';

/// Mock de IUserDataSource para testes
/// Simula comportamentos de uma fonte de dados real.

class MockErrorUserDataSource implements IUserDataSource {
  @override
  Future<DataResult<ListUsers, String>> getAllUsers() {
    // Retorna um resultado mockado de sucesso

    return Future.value(Failure<ListUsers, String>('Erro ao buscar usuários'));
  }

  @override
  Future<DataResult<UserEntry, String>> getUserById(int userId) {
    return Future.value(Failure<UserEntry, String>('Erro ao buscar usuário'));
  }

  @override
  Future<DataResult<UserEntry, String>> saveUserName(
    int userId,
    String userName,
  ) {
    // Simula um erro ao salvar o nome do usuário
    return Future.value(
      Failure<UserEntry, String>('Erro ao salvar nome de usuário'),
    );
  }
}

class MockUserDataSource implements IUserDataSource {
  @override
  Future<DataResult<ListUsers, String>> getAllUsers() {
    // Retorna um resultado mockado de sucesso
    final users = ListUsers(
      users: [UserEntry(id: 1, firstName: 'John', email: 'john@example.com')],
    );
    return Future.value(Success(users));
  }

  @override
  Future<DataResult<UserEntry, String>> getUserById(int userId) {
    return Future.value(
      Success(UserEntry(id: userId, firstName: 'John', email: ' ds@kk')),
    );
  }

  @override
  Future<DataResult<UserEntry, String>> saveUserName(
    int userId,
    String userName,
  ) {
    // Simula um erro ao salvar o nome do usuário
    return Future.value(
      Success(UserEntry(id: userId, firstName: userName, email: '')),
    );
  }

  // Implemente métodos mockados conforme necessário para os testes
}
