import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/features/cart/presentation/widgets/cart_item.dart';
import 'package:agrobridge_mobile/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class CartView extends ConsumerWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(leading: AutoLeadingButton()),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  children: [
                    SizedBox(height: 24.h),
                    const _OrderSummaryDropdown(),
                    SizedBox(height: 32.h),
                    const _CartList(),
                    SizedBox(height: 100.h), // Spacing for checkout button
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomSheet: const _CheckoutButton(),
    );
  }
}

class _OrderSummaryDropdown extends StatelessWidget {
  const _OrderSummaryDropdown();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Color(0xFFE5E7EB)),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Order Summery',
            style: AppFonts.openSans.semiBold14.withColor(
              const Color(0xFF70747D),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: const Color(0xFF70747D),
            size: 24.w,
          ),
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  const _CartList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      separatorBuilder: (context, index) => SizedBox(height: 18.h),
      itemBuilder: (context, index) => const CartItem(),
    );
  }
}

class _CheckoutButton extends StatelessWidget {
  const _CheckoutButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 24.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          context.pushRoute(const CartCheckoutRoute());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1E5925),
          minimumSize: Size(double.infinity, 51.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          'Checkout (\$2100)',
          style: AppFonts.openSans.semiBold14.withColor(Colors.white),
        ),
      ),
    );
  }
}
