import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@routePage
class ProductSuccessView extends StatelessWidget {
  const ProductSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.successIcon.svg(),

            const SizedBox(height: 30),
            Text('On success', style: AppFonts.roboto.medium20),

            const SizedBox(height: 30),
            Text(
              textAlign: TextAlign.center,
              'Thank you! Our export manager will contact you within 24 hours.',
              style: AppFonts.roboto.regular16,
            ),
          ],
        ),
      ),
    );
  }
}
