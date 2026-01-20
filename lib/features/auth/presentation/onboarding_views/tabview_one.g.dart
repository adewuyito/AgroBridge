// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabview_one.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OnboardingPageController)
const onboardingPageControllerProvider = OnboardingPageControllerProvider._();

final class OnboardingPageControllerProvider
    extends $NotifierProvider<OnboardingPageController, int> {
  const OnboardingPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onboardingPageControllerHash();

  @$internal
  @override
  OnboardingPageController create() => OnboardingPageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$onboardingPageControllerHash() =>
    r'c02400f7073bf83d4fe4f351d295e3f400bf20b3';

abstract class _$OnboardingPageController extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
