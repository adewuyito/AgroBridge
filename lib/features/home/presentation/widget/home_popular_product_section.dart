
import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_product_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePopularProductSection extends ConsumerWidget {
  const HomePopularProductSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: AppPadding.scaffoldSafeArea,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 24,
          children: [
            // TODO: Generate the list
            HomeProductCard(),
            HomeProductCard(),
            HomeProductCard(),
          ],
        ),
      ),
    );
  }
}
