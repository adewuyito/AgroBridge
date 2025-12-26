import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_loading_provider.g.dart';

// ~ loading impl would be removed on better implimnetation
@riverpod
class IsLoading extends _$IsLoading {
  @override
  bool build() => false;

  void setLoading(bool isLoading) {
    state = isLoading;
  }
}
