import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeProductCard extends ConsumerWidget {
  const HomeProductCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 184.w,
      // height: 261.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  ~ Image
              Container(
                width: double.infinity,
                height: 136.h,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              SizedBox(height: 18.h),

              // ~ Product name
              Text('Product Name', style: AppFonts.openSans.regular14),
              // ~ Product location
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Nigeria.",
                    style: AppFonts.openSans.withColor(
                      Color.fromRGBO(65, 70, 82, 1),
                    ),
                  ),
                  Assets.icons.mapPin.svg(),
                ],
              ),

              // ~ Product Price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    "\$48.97/ Ton",
                    style: AppFonts.openSans.bold20.withColor(
                      Color.fromRGBO(17, 24, 39, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () {}, // TODO: Add logic
                    icon: Assets.icons.homeCart.svg(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
