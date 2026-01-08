import 'package:agrobridge_mobile/core/constants/onboarding_data.dart';
import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:agrobridge_mobile/routes/app_navigator.dart';
import 'package:agrobridge_mobile/routes/app_route.gr.dart';

part 'tabview_one.g.dart';

@riverpod
class OnboardingPageController extends _$OnboardingPageController {
  @override
  int build() => 0;

  void nextView() {
    if (state >= 3) return;
    state++;
  }
}

@routePage
class OnboardingTabView extends ConsumerWidget {
  const OnboardingTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int pageIndex = ref.watch(onboardingPageControllerProvider);

    return Scaffold(
      body: Padding(
        padding: AppPadding.scaffoldSafeArea,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 269.w,
                  height: 269.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.topCenter,
                      end: AlignmentGeometry.bottomCenter,
                      colors: [
                        Color.fromRGBO(75, 122, 81, 0.3),
                        Color.fromRGBO(251, 251, 251, 0.4),
                      ],
                    ),
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    key: ValueKey<int>(pageIndex),
                    child: OnboardingData.assets[pageIndex],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 46),

            // ~
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: List.generate(4, (index) {
                final isActive = pageIndex == index;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                  width: isActive ? 18 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              }),
            ),
            const SizedBox(height: 32),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: Column(
                key: ValueKey<int>(pageIndex),
                children: [
                  Text(
                    OnboardingData.heading[pageIndex],
                    style: AppFonts.openSans.semiBold20,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    OnboardingData.subHeading[pageIndex],
                    style: AppFonts.openSans.regular16,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 56),

            ElevatedButton(
              onPressed: () {
                if (pageIndex == 3) {
                  AppNavigator.of(context).replace(LoginRoute());
                } else {
                  ref
                      .read(onboardingPageControllerProvider.notifier)
                      .nextView();
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
              ),
              child: Text(pageIndex == 3 ? 'Continue' : 'Next'),
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: () {
                AppNavigator.of(context).replace(LoginRoute());
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
                minimumSize: Size(double.infinity, 56),
              ),
              child: Text(
                'Skip',
                style: AppFonts.openSans.regular16.withColor(
                  Color.fromRGBO(65, 70, 82, 1),
                ),
              ),
            ),

            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
