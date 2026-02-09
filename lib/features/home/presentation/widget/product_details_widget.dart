import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final ts1 = AppFonts.openSans
        .withWeight(FontWeight.w400)
        .withSize(14)
        .withColor(Color.fromRGBO(65, 70, 82, 1));

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Availability', style: ts1),
            Text(
              'In Stock',
              style: AppFonts.openSans.semiBold16.withColor(
                Color.fromRGBO(17, 24, 39, 1),
              ),
            ),
          ],
        ),

        SizedBox(height: 13.h),

        Divider(color: Color(0xFFE5E7EB)),

        SizedBox(height: 25.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Minimum Order Quantity', style: ts1),
            Text(
              '5 Tons',
              style: AppFonts.openSans.semiBold16.withColor(
                Color.fromRGBO(17, 24, 39, 1),
              ),
            ),
          ],
        ),

        SizedBox(height: 13.h),

        Divider(color: Color(0xFFE5E7EB)),

        SizedBox(height: 25.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Grade', style: ts1),
            Text(
              'Premium Grade A',
              style: AppFonts.openSans.semiBold16.withColor(
                Color.fromRGBO(17, 24, 39, 1),
              ),
            ),
          ],
        ),

        SizedBox(height: 13.h),

        Divider(color: Color(0xFFE5E7EB)),

        SizedBox(height: 25.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Packaging', style: ts1),
            Text(
              '50kg bags',
              style: AppFonts.openSans.semiBold16.withColor(
                Color.fromRGBO(17, 24, 39, 1),
              ),
            ),
          ],
        ),

        SizedBox(height: 13.h),

        Divider(color: Color(0xFFE5E7EB)),
      ],
    );
  }
}
