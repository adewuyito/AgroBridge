import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/product_detail_related_products.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/product_details_widget.dart';
import 'package:agrobridge_mobile/features/home/presentation/widget/product_navigation_legend.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class ProductDetailView extends ConsumerWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(leading: AutoLeadingButton(), scrolledUnderElevation: 0.0),
      body: Padding(
        padding: AppPadding.scaffoldSafeArea,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ~ Image
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: double.infinity,
                height: 285.h,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              // ~ Image Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  3,
                  (index) => Container(
                    margin: const EdgeInsets.only(top: 12),
                    width: 103.w,
                    height: 72.h,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              //~ Product Name
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Premium Raw Cashew Nut',
                    style: AppFonts.openSans.semiBold24.withColor(
                      Color.fromRGBO(65, 70, 82, 1),
                    ),
                  ),

                  const SizedBox(height: 36),
                  // ~ Price text
                  Text(
                    '\$1,230 / Ton',
                    style: AppFonts.openSans
                        .withWeight(FontWeight.w700)
                        .withSize(30)
                        .withColor(Color.fromRGBO(17, 24, 39, 1)),
                  ),

                  const SizedBox(height: 10),

                  // ~ Legend Text
                  ProductNavigationLegend(),

                  const SizedBox(height: 36),

                  // ~ Product Details
                  ProductDetail(),

                  const SizedBox(height: 36),
                  Text(
                    'Sourced directly from verified small/holder farmers in Kaduna and Oyo, processed under export-ready standards. ',
                    style: AppFonts.openSans
                        .withSize(12)
                        .withColor(Color.fromRGBO(17, 24, 39, 1)),
                  ),

                  // ~ Action Buttons Row
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ~ Some from of back button
                      OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          spacing: 8,
                          children: [
                            Assets.icons.arrowLeftGreen.svg(),
                            Text(
                              'Back',
                              style: AppFonts.inter.regular16
                                  .withHeight(1.2)
                                  .withLetterSpacing(-.2),
                            ),
                          ],
                        ),
                      ),

                      // ~ Request Quate Button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: null,
                          elevation: 0,
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Assets.icons.dollarSign.svg(),
                            Text(
                              'Request a Quote',
                              style: AppFonts.inter.regular16
                                  .withHeight(1.2)
                                  .withLetterSpacing(-.2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // ~ Product spec sheet download
              const SizedBox(height: 28),
              TextButton(
                onPressed: () {},
                child: Row(
                  spacing: 7,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.filePdf.svg(),
                    Text(
                      'Download Product Spec Sheet (PDF)',
                      style: AppFonts.openSans.withColor(
                        Color.fromRGBO(65, 70, 82, 1),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),
              // ~ Product related section
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'Related Product',
                  style: AppFonts.openSans
                      .withWeight(FontWeight.w400)
                      .withSize(14)
                      .withColor(Color.fromRGBO(65, 70, 82, 1)),
                ),
              ),
              const SizedBox(height: 18),
              ProductDetailRelatedProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
