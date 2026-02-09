import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

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
          // ~ Container
          Container(width: 76.w, height: 74.h, color: Colors.greenAccent),

          // ~ Item Image
          /*  Container(
            width: 76.w,
            height: 74.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: const DecorationImage(
                image: NetworkImage(
                ),
                fit: BoxFit.cover,
              ),
            ),
          ), */
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

                    // ~ Qunatity button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 20,
                      children: [
                        // ~ Quantity minus
                        _QuantityButton(
                          icon: Icons.remove,
                          onTap: () {},
                          backgroundColor: const Color(0xFF1E5925),
                          iconColor: Colors.white,
                        ),

                        Text(
                          '0',
                          style: AppFonts.inter.regular20.withColor(
                            const Color(0xFF70747D),
                          ),
                        ),

                        // ~ Quantity button add
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
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9F9EF),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    'In Stock',
                    style: AppFonts.openSans.regular12.withColor(
                      const Color(0xFF22C55E),
                    ),
                  ),
                ),

                SizedBox(height: 12.h),

                // ~ Price Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$300 / Ton',
                      style: AppFonts.openSans.semiBold18.withColor(
                        const Color(0xFF111827),
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Row(
                        spacing: 4,
                        children: [
                          Icon(
                            Icons.delete_outline_rounded,
                            color: Color(0xFF414652),
                          ),
                          Text(
                            'Delete',
                            style: AppFonts.openSans.regular12.withColor(
                              Color(0xFF414652),
                            ),
                          ),
                        ],
                      ),
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
        width: 38.w,
        height: 28.h,
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
