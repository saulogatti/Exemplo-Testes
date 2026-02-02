// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:testenovo/screen/home/home_screen.dart' as _i1;
import 'package:testenovo/screen/list_users/users_list_view.dart' as _i3;
import 'package:testenovo/screen/product/product_list_view.dart' as _i2;

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
/// [_i2.ProductListView]
class ProductListRoute extends _i4.PageRouteInfo<void> {
  const ProductListRoute({List<_i4.PageRouteInfo>? children})
    : super(ProductListRoute.name, initialChildren: children);

  static const String name = 'ProductListRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i2.ProductListView());
    },
  );
}

/// generated route for
/// [_i3.UsersListView]
class UsersListRoute extends _i4.PageRouteInfo<void> {
  const UsersListRoute({List<_i4.PageRouteInfo>? children})
    : super(UsersListRoute.name, initialChildren: children);

  static const String name = 'UsersListRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i3.UsersListView());
    },
  );
}
