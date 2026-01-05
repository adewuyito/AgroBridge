import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailRelatedProducts extends StatelessWidget {
  const ProductDetailRelatedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18,
        crossAxisSpacing: 24,
        mainAxisExtent: 62.h,
      ),
      itemBuilder: (context, index) {
        return SizedBox(height: 62.h, width: 162.w, child: productWidget());
      },
      itemCount: 4,
    );
  }

  Widget productWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 9,
      children: [
        // ~ Product Image
        Container(
          width: 59,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        // ~ Product Details
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Raw Cocoa Beans',
                style: AppFonts.openSans.regular12.withColor(
                  Color.fromRGBO(65, 70, 82, 1),
                ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              Text('\$980 / Ton', style: AppFonts.openSans.semiBold16),
            ],
          ),
        ),
      ],
    );
  }
}