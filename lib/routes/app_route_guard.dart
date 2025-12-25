import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_route_guard.g.dart';

@riverpod
AuthGuard authGuard(Ref ref) => AuthGuard(ref);

class AuthGuard extends AutoRouteGuard {
  AuthGuard(Ref ref) : _ref = ref;

  // ignore: prefer_final_fields, unused_field
  Ref _ref;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next();
  }
}
