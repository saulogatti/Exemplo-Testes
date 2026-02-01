import 'package:get_it/get_it.dart';
import 'package:testenovo/screen/route/app_route.dart';

final appRoute = getIt<AppRoute>();
final getIt = GetIt.instance;
void setupDependencies() {
  // Register your dependencies here
  getIt.registerSingleton<AppRoute>(AppRoute());
}
