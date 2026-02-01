import 'package:auto_route/auto_route.dart';
import 'package:testenovo/screen/route/app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: ' Page|View|Screen,Route')
class AppRoute extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(page: UsersListRoute.page, title: (context, data) => 'Users'),
        AutoRoute(
          page: ProductListRoute.page,
          title: (context, data) => 'Albuns',
        ),
      ],
    ),
  ];
}
