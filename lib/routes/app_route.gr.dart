// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agrobridge_mobile/features/auth/presentation/login_view.dart'
    as _i3;
import 'package:agrobridge_mobile/features/auth/presentation/signup_view.dart'
    as _i4;
import 'package:agrobridge_mobile/features/home/presentation/home_tab.dart'
    as _i2;
import 'package:agrobridge_mobile/navigation/app_navigation_tabview.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i5;

/// generated route for
/// [_i1.AppNavigationTabview]
class AppNavigationTabview extends _i5.PageRouteInfo<void> {
  const AppNavigationTabview({List<_i5.PageRouteInfo>? children})
    : super(AppNavigationTabview.name, initialChildren: children);

  static const String name = 'AppNavigationTabview';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppNavigationTabview();
    },
  );
}

/// generated route for
/// [_i2.HomeTab]
class HomeTab extends _i5.PageRouteInfo<void> {
  const HomeTab({List<_i5.PageRouteInfo>? children})
    : super(HomeTab.name, initialChildren: children);

  static const String name = 'HomeTab';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeTab();
    },
  );
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginView();
    },
  );
}

/// generated route for
/// [_i4.SignupView]
class SignupRoute extends _i5.PageRouteInfo<void> {
  const SignupRoute({List<_i5.PageRouteInfo>? children})
    : super(SignupRoute.name, initialChildren: children);

  static const String name = 'SignupRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignupView();
    },
  );
}
