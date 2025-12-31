import 'package:agrobridge_mobile/features/home/presentation/widget/home_appbar.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_filters.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_searchbar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class HomeTab extends HookConsumerWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    return Scaffold(
      appBar: HomeAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSearchbar(inputController: searchController),
            HomeCategoryFilters(),
            
          ],
        ),
      ),
    );
  }
}
