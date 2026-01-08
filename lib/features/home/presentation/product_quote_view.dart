import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/core/shared/widgets/form_text_field.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class ProductQuoteView extends HookConsumerWidget {
  const ProductQuoteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(leading: AutoLeadingButton()),
      body: Padding(
        padding: AppPadding.scaffoldSafeArea,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  'Request a Quote',
                  style: AppFonts.openSans.semiBold20,
                ),
              ),

              Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 32,
                  children: [
                    FormTextfield(
                      controller: emailController,
                      label: 'Product',
                    ),

                    FormTextfield(
                      controller: emailController,
                      label: 'Quanity',
                    ),

                    FormTextfield(
                      controller: emailController,
                      label: 'Destination Port / Delivery',
                    ),

                    FormTextfield(
                      controller: emailController,
                      label: 'Company Name ',
                    ),

                    FormTextfield(controller: emailController, label: 'Email'),

                    Column(
                      spacing: 8,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Note/Special requirement',
                          style: AppFonts.inter.medium14.withColor(
                            Color.fromRGBO(15, 23, 42, 1),
                          ),
                        ),
                        TextFormField(
                          controller: emailController,
                          minLines: 6,
                          maxLines: 6,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(16),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            alignLabelWithHint: true,
                            hintText:
                                'kindly make sure the nut measure is in tons',

                            hintStyle: AppFonts.openSans.regular16.withColor(
                              const Color.fromRGBO(148, 163, 184, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text(
                    'I agree to the terms of purchase',
                    style: AppFonts.openSans.regular12,
                  ),
                ],
              ),

              const SizedBox(height: 48),

              // ~
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ~ Some from of back button
                  SizedBox(
                    height: 52,
                    child: OutlinedButton(
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
                  ),

                  // ~ Request Quate Button
                  SizedBox(
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: null,
                        elevation: 0,
                      ),
                      child: Text(
                        'Submit Request',
                        style: AppFonts.inter.regular16
                            .withHeight(1.2)
                            .withLetterSpacing(-.2),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
