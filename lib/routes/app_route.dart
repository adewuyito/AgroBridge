import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_route_guard.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'app_route.gr.dart';

// Code gen
part 'app_route.g.dart';

class TransitionsBuilder {
  static Widget fadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    /// you get an animation object and a widget
    /// make your own transition
    return FadeTransition(opacity: animation, child: child);
  }
}

@riverpod
AppRouter appRouter(Ref ref) {
  AuthGuard authGuard = ref.watch(authGuardProvider);
  return AppRouter(authGuard);
}

@AutoRouterConfig(replaceInRouteName: 'Page|View|Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter(AuthGuard authGuard) : _authGuard = authGuard;

  final AuthGuard _authGuard;

  @override
  List<AutoRoute> get routes => [
    // AutoRoute(page: LoginRoute.page),
    AutoRoute(
      page: AppNavigationTabview.page,
      children: [AutoRoute(page: HomeTab.page)],
    ),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignupRoute.page, initial: true),
  ];
  @override
  List<AutoRouteGuard> get guards => [_authGuard];

  // void updateAuthGuard(AuthGuard guard) {
  //   authGuard = guard;
  //   notifyListeners();
  // }

  // CustomRoute routeWithFadeTransition({
  //   required PageInfo<dynamic> page,
  //   bool initial = false,
  //   String? path,
  //   Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
  //       transitionsBuilder =
  //       TransitionsBuilders.fadeIn,
  //   List<AutoRoute>? children,
  // }) {
  //   return CustomRoute(
  //     path: path,
  //     page: page,
  //     initial: initial,
  //     transitionsBuilder: transitionsBuilder,
  //     durationInMilliseconds: 400,
  //     guards: [authGuard],
  //     children: children,
  //   );
  // }
}
