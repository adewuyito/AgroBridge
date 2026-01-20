import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:auto_route/annotations.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            const _CartHeader(),
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
      bottomSheet: const _CheckoutButton(),
    );
  }
}

class _CartHeader extends StatelessWidget {
  const _CartHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
      child: Row(
        spacing: 21,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ~ Back botton
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back,
              size: 24.w,
              color: const Color(0xFF70747D),
            ),
          ),

          Text(
            'Home',
            style: AppFonts.openSans.regular14.withColor(
              const Color(0xFF70747D),
            ),
          ),

          Container(
            padding: EdgeInsets.only(bottom: 2.h),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFFE5E7EB), width: 1),
              ),
            ),
            child: Text(
              'Premium Raw cashew Nut',
              style: AppFonts.openSans.regular14.withColor(
                const Color(0xFF70747D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderSummaryDropdown extends StatelessWidget {
  const _OrderSummaryDropdown();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Order Summery',
          style: AppFonts.openSans.semiBold14.withColor(
            const Color(0xFF70747D),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: const Color(0xFF70747D),
          size: 24.w,
        ),
      ],
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
      itemBuilder: (context, index) => const _CartItem(),
    );
  }
}

class _CartItem extends StatelessWidget {
  const _CartItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16.h),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFEFF1F3), width: 1)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 76.w,
            height: 74.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://www.figma.com/api/mcp/asset/373f35f9-2043-438a-80db-450a49ef4f29',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Premium Raw Cashew Nut',
                        style: AppFonts.openSans.regular14.withColor(
                          Colors.black,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 4.h,
                      ),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(
                          side: BorderSide(color: const Color(0xFF70747D)),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_outline,
                            size: 14.w,
                            color: const Color(0xFF414652),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            'Delete',
                            style: AppFonts.openSans.regular12.withColor(
                              const Color(0xFF414652),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9F9EF),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    'In Stock',
                    style: AppFonts.openSans.regular12.withColor(
                      const Color(0xFF22C55E),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$300 / Ton',
                      style: AppFonts.openSans.semiBold18.withColor(
                        const Color(0xFF111827),
                      ),
                    ),
                    Row(
                      children: [
                        _QuantityButton(
                          icon: Icons.remove,
                          onTap: () {},
                          backgroundColor: const Color(0xFF1E5925),
                          iconColor: Colors.white,
                        ),
                        SizedBox(width: 9.w),
                        Container(
                          width: 38.w,
                          height: 29.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFE5E7EB)),
                            borderRadius: BorderRadius.circular(48.r),
                          ),
                          child: Text(
                            '0',
                            style: AppFonts.inter.regular20.withColor(
                              const Color(0xFF70747D),
                            ),
                          ),
                        ),
                        SizedBox(width: 9.w),
                        _QuantityButton(
                          icon: Icons.add,
                          onTap: () {},
                          backgroundColor: const Color(0xFF1E5925),
                          iconColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color iconColor;

  const _QuantityButton({
    required this.icon,
    required this.onTap,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 49.w,
        height: 29.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(48.r),
        ),
        child: Icon(icon, color: iconColor, size: 20.w),
      ),
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
        onPressed: () {},
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
