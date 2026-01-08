import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';

class ProductNavigationLegend extends StatelessWidget {
  const ProductNavigationLegend({super.key});

  @override
  Widget build(BuildContext context) {
    final ts1 = AppFonts.openSans
        .withWeight(FontWeight.w400)
        .withSize(14)
        .withColor(Color.fromRGBO(65, 70, 82, 1));
    return Row(
      spacing: 6,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Seeds', style: ts1),

        Text(' » ', style: ts1),

        Text('Cashew', style: ts1),
      ],
    );
  }
}
