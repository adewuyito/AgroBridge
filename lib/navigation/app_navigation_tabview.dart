import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


@routePage
class AppNavigationTabview extends ConsumerWidget {
  const AppNavigationTabview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter.tabBar(
      routes: [

      ],
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      builder: (context, child, tabController) => child,
    );
  }
}
