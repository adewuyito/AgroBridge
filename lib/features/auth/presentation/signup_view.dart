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
    final _email = useTextEditingController();
    final _password = useTextEditingController();
    final _confirmPassword = useTextEditingController();
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

            const SizedBox(height: 32),

            // ~ Goole Signin
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 56),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(color: Color.fromARGB(255, 197, 204, 218)),
                ),
              ),
              onPressed: () {},
              child: Row(
                spacing: 23.w,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign in with Google',
                    style: AppFonts.openSans.regular14.withColor(
                      Color.fromRGBO(65, 70, 82, 1),
                    ),
                  ),
                  Assets.icons.googleG2.svg(),
                ],
              ),
            ),

            const SizedBox(height: 77),

            // ~ Divider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 17,
              children: [
                Container(
                  width: 51,
                  height: 1,
                  color: Color.fromRGBO(17, 24, 39, 0.2),
                ),
                Text(
                  'Or Continue with email',
                  style: AppFonts.openSans.regular12.withColor(
                    Color.fromRGBO(112, 116, 125, 1),
                  ),
                ),
                Container(
                  width: 51,
                  height: 1,
                  color: Color.fromRGBO(17, 24, 39, 0.2),
                ),
              ],
            ),

            const SizedBox(height: 42),

            // ~ Login Form
            Form(
              key: _formkey,
              child: Column(
                spacing: 32,
                children: [
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

                  AuthFormTextfield(
                    controller: _confirmPassword,
                    label: "Confirm Password",
                    hint: "********",
                    icon: Assets.icons.passwordHide.svg(),
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != _password.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 72),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(30, 89, 37, 1),
                foregroundColor: Colors.white,
                minimumSize: const Size(354, 56),
                padding: const EdgeInsets.all(10),
                side: const BorderSide(color: Color(0xFF1E5925), width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: _isloading ? null : _handleSignUp,
              child: _isloading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : Text(
                      'Sign Up',
                      style: AppFonts.inter.regular20.withColor(Colors.white),
                    ),
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
