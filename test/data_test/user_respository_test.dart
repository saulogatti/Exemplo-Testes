import 'package:flutter_test/flutter_test.dart';
import 'package:testenovo/data_source/user_repository.dart';
import 'package:testenovo/domain/models/user/user_model.dart';
import 'package:testenovo/utils/data_result.dart';

import 'mock/mock_user_data_source.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late UserRepository repository;
  setUp(() {
    // Configurações iniciais antes de cada teste
    repository = UserRepository(MockUserDataSource());
  });
  group("teste de UserRepository ", () {
    test("Tratamento de erros ao buscar usuários", () async {
      // Implementar testes para UserRepository
      repository = UserRepository(MockErrorUserDataSource());
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
  });
}
