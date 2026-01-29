import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class CartCheckoutView extends HookConsumerWidget {
  const CartCheckoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardNumberController = useTextEditingController();
    final expireDateController = useTextEditingController();
    final pinController = useTextEditingController();
    final selectedMethod = useState(0); // 0: Credit Card, 1: Wallet, 2: Cash/Other
    final selectedWallet = useState(0); // 0: Metamask, 1: Phantom, 2: Trust wallet, 3: Coinbase

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close, color: Colors.black),
          ),
          SizedBox(width: 18.w),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Choose a payment method',
                style: AppFonts.openSans.regular16.withColor(
                  const Color(0xFF111827),
                ),
              ),
              SizedBox(height: 24.h),
              
              // Payment Method Selector
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _PaymentMethodCard(
                    isSelected: selectedMethod.value == 0,
                    label: 'Credit Card',
                    icon: Icons.credit_card,
                    color: const Color(0xFF22C55E), // Greenish
                    onTap: () => selectedMethod.value = 0,
                  ),
                  _PaymentMethodCard(
                    isSelected: selectedMethod.value == 1,
                    label: 'Connect\nWallet',
                    icon: Icons.currency_bitcoin,
                    color: const Color(0xFFF7931A), // Bitcoin Orange
                    onTap: () => selectedMethod.value = 1,
                  ),
                  _PaymentMethodCard(
                    isSelected: selectedMethod.value == 2,
                    label: 'Credit Card',
                    icon: Icons.attach_money,
                    color: Colors.black,
                    onTap: () => selectedMethod.value = 2,
                  ),
                ],
              ),
              
              SizedBox(height: 32.h),

              // Conditional Form rendering
              if (selectedMethod.value == 1)
                _WalletSelection(
                  selectedWallet: selectedWallet.value,
                  onWalletSelected: (index) => selectedWallet.value = index,
                )
              else
                _CreditCardForm(
                  cardNumberController: cardNumberController,
                  expireDateController: expireDateController,
                  pinController: pinController,
                ),

              SizedBox(height: 32.h),

              // Submit Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E5925),
                  minimumSize: Size(double.infinity, 54.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.r),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.dollarSign.svg(
                       colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                       width: 20.w,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Submit',
                      style: AppFonts.inter.regular20.withColor(Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.h),

              // Footer
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock_outline, size: 16.w, color: const Color(0xFF414652)),
                      SizedBox(width: 4.w),
                      Text(
                        'Secure payment',
                        style: AppFonts.openSans.semiBold14.withColor(
                          const Color(0xFF414652),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'All payments are secured\nand protected by Debridger',
                    textAlign: TextAlign.center,
                    style: AppFonts.openSans.regular12.withColor(
                      const Color(0xFF414652),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _PaymentMethodCard extends StatelessWidget {
  final bool isSelected;
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _PaymentMethodCard({
    required this.isSelected,
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.w,
        height: 100.h,
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? const Color(0xFF4B7A51) : const Color(0xFFE5E7EB),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 24.w),
            SizedBox(height: 10.h),
            Text(
              label,
              textAlign: TextAlign.center,
              style: AppFonts.openSans.semiBold14.withColor(
                const Color(0xFF414652),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CreditCardForm extends StatelessWidget {
  final TextEditingController cardNumberController;
  final TextEditingController expireDateController;
  final TextEditingController pinController;

  const _CreditCardForm({
    required this.cardNumberController,
    required this.expireDateController,
    required this.pinController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CheckoutInput(
          label: 'Card Number',
          controller: cardNumberController,
          hintText: '0000 3456 7854 3454',
        ),
        SizedBox(height: 16.h),
        _CheckoutInput(
          label: 'Expire Date',
          controller: expireDateController,
          hintText: '02/2028',
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Type',
                    style: AppFonts.openSans.regular16.withColor(
                      const Color(0xFF414652),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 54.h,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF70747D), width: 1.5),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.credit_card, color: Colors.red, size: 24.w),
                        const Icon(Icons.keyboard_arrow_down, color: Color(0xFF70747D), size: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: _CheckoutInput(
                label: 'Pin',
                controller: pinController,
                isPassword: true,
                hintText: '0000',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _WalletSelection extends StatelessWidget {
  final int selectedWallet;
  final ValueChanged<int> onWalletSelected;

  const _WalletSelection({
    required this.selectedWallet,
    required this.onWalletSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Select Wallet',
          style: AppFonts.openSans.regular18.withColor(
            const Color(0xFF414652),
          ),
        ),
        SizedBox(height: 24.h),
        _WalletItem(
          isSelected: selectedWallet == 0,
          label: 'Metamask',
          iconUrl: 'https://www.figma.com/api/mcp/asset/f20e75b2-55eb-4042-84a8-ec5d9c7b2efb',
          onTap: () => onWalletSelected(0),
        ),
        SizedBox(height: 16.h),
        _WalletItem(
          isSelected: selectedWallet == 1,
          label: 'Phantom',
          iconUrl: 'https://www.figma.com/api/mcp/asset/5fcebe86-6d76-48b9-9f78-7730fd2e7ff1',
          onTap: () => onWalletSelected(1),
        ),
        SizedBox(height: 16.h),
        _WalletItem(
          isSelected: selectedWallet == 2,
          label: 'Trust wallet',
          iconUrl: 'https://www.figma.com/api/mcp/asset/4b230e73-e70a-4f76-aaf9-f377bf132d6d',
          onTap: () => onWalletSelected(2),
        ),
        SizedBox(height: 16.h),
        _WalletItem(
          isSelected: selectedWallet == 3,
          label: 'Coinbase',
          iconUrl: 'https://www.figma.com/api/mcp/asset/2e173e34-fa73-4c1d-973e-ef0e5e42f4f1',
          onTap: () => onWalletSelected(3),
        ),
      ],
    );
  }
}

class _WalletItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final String iconUrl;
  final VoidCallback onTap;

  const _WalletItem({
    required this.isSelected,
    required this.label,
    required this.iconUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 59.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? const Color(0xFF1E5925) : const Color(0xFF70747D),
            width: isSelected ? 3 : 1,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              iconUrl,
              width: 50.w,
              height: 27.h,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.wallet, size: 27.h),
            ),
            SizedBox(width: 4.w),
            Text(
              label,
              style: AppFonts.openSans.regular18.withColor(
                const Color(0xFF414652),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckoutInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isPassword;
  final String? hintText;

  const _CheckoutInput({
    required this.label,
    required this.controller,
    this.isPassword = false,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppFonts.openSans.regular16.withColor(
            const Color(0xFF414652),
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          style: AppFonts.openSans.regular16.withColor(const Color(0xFF70747D)),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppFonts.openSans.regular16.withColor(const Color(0xFF70747D)),
            contentPadding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.r),
              borderSide: const BorderSide(color: Color(0xFF70747D), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.r),
              borderSide: const BorderSide(color: Color(0xFF1E5925), width: 1.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.r),
              borderSide: const BorderSide(color: Color(0xFF70747D), width: 1.5),
            ),
            suffixIcon: isPassword 
              ? Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: Assets.icons.passwordReveal.svg(width: 24.w),
                ) 
              : null,
          ),
        ),
      ],
    );
  }
}