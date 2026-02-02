import 'package:get_it/get_it.dart';
import 'package:testenovo/data_source/product_repository.dart';
import 'package:testenovo/data_source/remote/http_impl.dart';
import 'package:testenovo/data_source/source/i_product_data_source.dart';
import 'package:testenovo/data_source/source/i_user_data_source.dart';
import 'package:testenovo/data_source/source/product_data_source.dart';
import 'package:testenovo/data_source/source/user_data_source.dart';
import 'package:testenovo/data_source/user_repository.dart';
import 'package:testenovo/domain/repository/i_product_repository.dart';
import 'package:testenovo/domain/repository/i_user_repository.dart';
import 'package:testenovo/domain/use_case/product_actions.dart';
import 'package:testenovo/domain/use_case/user_actions.dart';
import 'package:testenovo/screen/route/app_route.dart';

final appRoute = getIt<AppRoute>();
final GetIt getIt = GetIt.instance;

/// Configuração de injeção de dependências da aplicação.
void setupDependencies() {
  getIt.registerSingleton<AppRoute>(AppRoute());
  getIt.registerLazySingleton(() => HttpImpl('https://dummyjson.com'));
  getIt.registerLazySingleton<IUserDataSource>(
    () => UserDataSource(getIt<HttpImpl>()),
  );
  getIt.registerLazySingleton<IUserRepository>(
    () => UserRepository(getIt<IUserDataSource>()),
  );
  getIt.registerLazySingleton<UserActions>(
    () => UserActions(getIt<IUserRepository>()),
  );
  getIt.registerLazySingleton<IProductDataSource>(
    () => ProductDataSource(getIt<HttpImpl>()),
  );
  getIt.registerLazySingleton<IProductRepository>(
    () => ProductRepository(getIt<IProductDataSource>()),
  );
  getIt.registerLazySingleton(
    () => ProductActions(getIt<IProductRepository>()),
  );
}
