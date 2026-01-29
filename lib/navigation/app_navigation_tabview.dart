import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:agrobridge_mobile/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@routePage
class AppNavigationTabview extends ConsumerWidget {
  const AppNavigationTabview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter(
      routes: const [
        HomeTab(),
        RequestsRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xFF1E5925),
            unselectedItemColor: const Color(0xFF70747D),
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Order',
                icon: Icon(Icons.description_outlined),
                activeIcon: Icon(Icons.description),
              ),
              BottomNavigationBarItem( 
                label: 'Wallet',
                icon: Assets.icons.homeCart.svg(
                  colorFilter: const ColorFilter.mode(Color(0xFF70747D), BlendMode.srcIn),
                ),
                activeIcon: Assets.icons.homeCart.svg(
                   colorFilter: const ColorFilter.mode(Color(0xFF1E5925), BlendMode.srcIn),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.person_outline),
                 activeIcon: Icon(Icons.person),
              ),
            ],
          ),
        );
      },
    );
  }
}
