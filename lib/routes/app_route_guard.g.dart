// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route_guard.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authGuard)
const authGuardProvider = AuthGuardProvider._();

final class AuthGuardProvider
    extends $FunctionalProvider<AuthGuard, AuthGuard, AuthGuard>
    with $Provider<AuthGuard> {
  const AuthGuardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authGuardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authGuardHash();

  @$internal
  @override
  $ProviderElement<AuthGuard> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthGuard create(Ref ref) {
    return authGuard(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthGuard value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthGuard>(value),
    );
  }
}

String _$authGuardHash() => r'f9210a0c6dbbd06edcb6f126c3f5cbe027b343fe';
