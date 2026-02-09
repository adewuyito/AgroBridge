import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductNavigationLegend extends StatelessWidget {
  const ProductNavigationLegend({super.key});

  @override
  Widget build(BuildContext context) {
    final ts1 = AppFonts.openSans
        .withWeight(FontWeight.w400)
        .withSize(14)
        .withColor(Color.fromRGBO(65, 70, 82, 1));
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFE5E7EB),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        spacing: 6,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Seeds', style: ts1),

          Text(' » ', style: ts1),

          Text('Cashew', style: ts1),
        ],
      ),
    );
  }
}
