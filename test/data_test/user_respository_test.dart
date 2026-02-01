import 'package:flutter_test/flutter_test.dart';
import 'package:testenovo/data_source/user_repository.dart';
import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/utils/data_result.dart';

import 'mock/mock_user_data_source.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    // Configurações iniciais antes de cada teste
  });
  group("teste de UserRepository ", () {
    UserRepository repository = UserRepository(MockUserDataSource());
    test("Buscar usuários com sucesso", () async {
      // Implementar mais testes conforme necessário

      final result = repository.getAllUsers();
      expect(result, isA<Future<DataResult<List<UserModel>, String>>>());
      final dataResult = await result;
      expect(dataResult, isA<Success<List<UserModel>, String>>());
      dataResult.when(
        success: (data) {
          expect(data.data, isA<List<UserModel>>());
          expect(data.data.length, greaterThan(0));
        },
        failure: (error) {
          fail('Esperava sucesso, mas recebeu falha: ${error.error}');
        },
      );
    });
    test(" Salvar usuario", () async {
      final result = await repository.saveUserName(1, 'NovoNome');
      expect(result, isA<DataResult<UserModel, String>>());
      result.when(
        success: (data) {
          expect(data.data, isA<UserModel>());
        },
        failure: (error) {
          fail('Esperava sucesso ao salvar, mas recebeu falha: ${error.error}');
        },
      );
    });
  });
  group("Erro ao salvar usuario", () {
    final repository = UserRepository(MockErrorUserDataSource());
    test(" Salvar usuario com erro", () async {
      final result = await repository.saveUserName(1, 'NovoNome');
      expect(result, isA<DataResult<UserModel, String>>());
      result.when(
        success: (data) {
          fail('Esperava falha ao salvar, mas recebeu sucesso: ${data.data}');
        },
        failure: (error) {
          expect(error.error, isA<String>());
        },
      );
    });

    test("Tratamento de erros ao buscar usuários", () async {
      // Implementar testes para UserRepository

      final result = repository.getAllUsers();
      expect(result, isA<Future<DataResult<List<UserModel>, String>>>());
      final dataResult = await result;
      expect(dataResult, isA<Failure<List<UserModel>, String>>());
      dataResult.when(
        success: (data) {
          fail('Esperava falha, mas recebeu sucesso: $data');
        },
        failure: (error) {
          expect(error.error, isA<String>());
          expect(error.error, contains('Erro ao buscar usuários'));
        },
      );
    });
  });
}
