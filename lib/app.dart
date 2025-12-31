import 'package:agrobridge_mobile/core/constants/app_theme.dart';
import 'package:agrobridge_mobile/routes/app_navigator.dart';
import 'package:agrobridge_mobile/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgroBridgeApp extends ConsumerWidget {
  const AgroBridgeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    return ScreenUtilInit(
      // ~ Set screen size
      designSize: const Size(390, 844),

      child: MaterialApp.router(
        theme: appTheme,
        debugShowCheckedModeBanner: false,

        routerConfig: appRouter.config(
          navigatorObservers: () => [AppNavigatorObserver()],
        ),
      ),
    );
  }
}
