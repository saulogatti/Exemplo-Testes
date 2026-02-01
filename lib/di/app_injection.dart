import 'package:get_it/get_it.dart';
import 'package:testenovo/data_source/source/user_data_source.dart';
import 'package:testenovo/data_source/user_repository.dart';
import 'package:testenovo/domain/use_case/user_actions.dart';
import 'package:testenovo/domain/repository/i_user_repository.dart';
import 'package:testenovo/screen/route/app_route.dart';

final appRoute = getIt<AppRoute>();
final getIt = GetIt.instance;
void setupDependencies() {
  // Register your dependencies here
  getIt.registerSingleton<AppRoute>(AppRoute());
  getIt.registerLazySingleton<IUserRepository>(
    () => UserRepository(UserDataSource()),
  );
  getIt.registerLazySingleton<UserActions>(
    () => UserActions(getIt<IUserRepository>()),
  );
}
