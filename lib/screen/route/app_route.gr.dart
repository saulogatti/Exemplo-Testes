// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:testenovo/screen/albuns/list_albuns_screen.dart' as _i2;
import 'package:testenovo/screen/home/home_screen.dart' as _i1;
import 'package:testenovo/screen/list_users/list_users_screen.dart' as _i3;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.ListAlbunsScreen]
class ListAlbunsRoute extends _i4.PageRouteInfo<void> {
  const ListAlbunsRoute({List<_i4.PageRouteInfo>? children})
    : super(ListAlbunsRoute.name, initialChildren: children);

  static const String name = 'ListAlbunsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ListAlbunsScreen();
    },
  );
}

/// generated route for
/// [_i3.ListUsersScreen]
class ListUsersRoute extends _i4.PageRouteInfo<void> {
  const ListUsersRoute({List<_i4.PageRouteInfo>? children})
    : super(ListUsersRoute.name, initialChildren: children);

  static const String name = 'ListUsersRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i3.ListUsersScreen());
    },
  );
}
