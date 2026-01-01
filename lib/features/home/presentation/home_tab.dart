import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_appbar.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_carousel.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_filters.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/home_searchbar.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            const SizedBox(height: 15),
            Padding(
              padding: AppPadding.scaffoldSafeArea,
              child: HomeSearchbar(inputController: searchController),
            ),

            const SizedBox(height: 23),
            // HomeCategoryFilters(),
            ChoiceChipExample(),

            const SizedBox(height: 23),
            HomeCarousel(),

            const SizedBox(height: 24),

            Padding(
              padding: AppPadding.scaffoldSafeArea,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Product',
                        style: AppFonts.openSans.regular14,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: AppFonts.openSans.regular12,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                    ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
