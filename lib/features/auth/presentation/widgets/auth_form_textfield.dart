import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:flutter/material.dart';

class AuthFormTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final String? label;
  final bool isObscure;
  final Widget? icon;
  final Validator validation;
  const AuthFormTextfield({
    super.key,
    required this.controller,
    this.hint,
    required this.label,
    this.isObscure = false,
    this.icon,
    this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        label != null
            ? Text(
                label!,
                style: AppFonts.inter.medium14.withColor(
                  Color.fromRGBO(15, 23, 42, 1),
                ),
              )
            : SizedBox.shrink(),
        TextFormField(
          controller: controller,
          validator: validation,
          style: AppFonts.inter.regular16,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppFonts.inter.medium16.withColor(
              const Color.fromRGBO(148, 163, 184, 1),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: icon,
            ),
          ),
        ),
      ],
    );
  }
}

typedef Validator = String? Function(String?)?;
