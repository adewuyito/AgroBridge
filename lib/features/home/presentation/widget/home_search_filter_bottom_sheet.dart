import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class HomeSearchFilterBottomSheet extends ConsumerWidget {
  const HomeSearchFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ProductCategory.values;
    final cStyle = AppFonts.openSans;
    return Scaffold(
      body: Padding(
        padding: AppPadding.scaffoldSafeArea,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 12, 0, 4),
                  width: 70,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 231, 235, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              // ~
              const SizedBox(height: 4),

              Text('Category', style: cStyle),
              Divider(color: Color.fromRGBO(229, 231, 235, 1)),
              ...product.map((p) {
                return CheckboxListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  title: Text(
                    p.name,
                    style: AppFonts.openSans.regular18.withColor(
                      Color(0xFF414652),
                    ),
                  ),
                  value: false,
                  onChanged: (onChanged) {},
                );
              }),

              // ~
              const SizedBox(height: 4),

              Text('Category', style: cStyle),
              Divider(color: Color.fromRGBO(229, 231, 235, 1)),
              ...product.map((p) {
                return CheckboxListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  title: Text(
                    p.name,
                    style: AppFonts.openSans.regular18.withColor(
                      Color(0xFF414652),
                    ),
                  ),
                  value: false,
                  onChanged: (onChanged) {},
                );
              }),

              // ~
              const SizedBox(height: 4),

              Text('Growth Score range', style: cStyle),
              Divider(color: Color.fromRGBO(229, 231, 235, 1)),
              Slider(value: 0, onChanged: (value) {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('\$100'), Text('\$10,000')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ProductCategory {
  grains('Grains'),
  fruits('Fruits'),
  seed('Seeds'),
  spices('Spices');

  final String name;

  const ProductCategory(this.name);
}
