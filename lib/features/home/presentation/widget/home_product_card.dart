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
      height: 261.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.251),
            offset: const Offset(0, 15),
            blurRadius: 53.0,
            spreadRadius: -19.0,
          ),
        ],
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
              Text(
                'Product Name',
                style: AppFonts.openSans.regular14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              // SizedBox(height: 8.h),
              // ~ Product location.
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

              SizedBox(height: 11.h),
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
                  GestureDetector(
                    onTap: () {}, // TODO: Add logic
                    child: Assets.icons.homeCart.svg(),
                  ),
                ],
              ),
            ],
          ),

          // ~ InStock label
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Color.fromRGBO(233, 249, 239, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
            ),
            child: Text(
              'In Stock',
              style: AppFonts.openSans
                  .withColor(Color.fromRGBO(34, 197, 94, 1))
                  .withHeight(1),
            ),
          ),
        ],
      ),
    );
  }
}
