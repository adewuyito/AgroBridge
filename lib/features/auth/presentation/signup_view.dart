import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/core/utils/input_validator.dart';
import 'package:agrobridge_mobile/features/auth/presentation/widgets/auth_form_textfield.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:agrobridge_mobile/routes/app_navigator.dart';
import 'package:agrobridge_mobile/routes/app_route.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider/is_loading_provider.dart';

@routePage
class SignupView extends HookConsumerWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ~ Variable
    final _companyName = useTextEditingController();
    final _contactPerson = useTextEditingController();
    final _email = useTextEditingController();
    final _password = useTextEditingController();
    final bool _isloading = ref.watch(isLoadingProvider);

    //~ Form key
    final _formkey = GlobalKey<FormState>();

    void _handleSignUp() async {
      if (!_formkey.currentState!.validate()) return;
    }

    return Scaffold(
      body: SafeArea(
        minimum: AppPadding.scaffoldSafeArea,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: AppFonts.openSans.bold24.withColor(Color(0xFF414652)),
            ),

            const SizedBox(height: 42),

            // ~ Login Form
            Form(
              key: _formkey,
              child: Column(
                spacing: 32,
                children: [
                  AuthFormTextfield(
                    controller: _companyName,
                    label: 'Comapany Name',
                    hint: "Olak Global Inc.",
                    validation: (value) => InputValidatorUtils.nonEmptyField(
                      'Kindly enter company name',
                      value,
                      personalMessage: true,
                    ),
                  ),

                  AuthFormTextfield(
                    controller: _contactPerson,
                    label: 'Contact Person',
                    hint: "John Doe",
                    validation: (value) => InputValidatorUtils.nonEmptyField(
                      'Contact Person',
                      value,
                    ),
                  ),

                  AuthFormTextfield(
                    controller: _email,
                    label: "Email",
                    hint: "Enter your email",
                    icon: Assets.icons.mail.svg(),
                    validation: InputValidatorUtils.validEmailAddress,
                  ),

                  AuthFormTextfield(
                    controller: _password,
                    label: "Password",
                    hint: "********",
                    icon: Assets.icons.passwordHide.svg(),
                    validation: (value) =>
                        InputValidatorUtils.nonEmptyField('Password', value),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 72),

            ElevatedButton(
              onPressed: _isloading ? null : _handleSignUp,
              child: _isloading ? CircularProgressIndicator() : Text('Sign In'),
            ),

            SizedBox(height: 24.h),

            // ~ Signup redirect
            Text.rich(
              style: AppFonts.openSans.withColor(Color.fromRGBO(65, 70, 82, 1)),
              TextSpan(
                children: [
                  TextSpan(
                    text: "You don't have an account? ",
                    style: AppFonts.openSans.regular14,
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>
                          AppNavigator.of(context).push(LoginRoute()),
                    text: "Sign Up",
                    style: AppFonts.openSans.semiBold14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
