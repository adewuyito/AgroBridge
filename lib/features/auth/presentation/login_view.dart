import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:agrobridge_mobile/features/auth/presentation/widgets/auth_form_textfield.dart';
import 'package:agrobridge_mobile/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider/is_loading_provider.dart';

@routePage
class LoginView extends HookConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ~ Variable
    final _email = useTextEditingController();
    final _password = useTextEditingController();
    final bool _isloading = ref.watch(isLoadingProvider);

    //~ Form key
    final _formkey = GlobalKey<FormState>();

    void _handleLogin() async {}

    return Scaffold(
      body: SafeArea(
        minimum: AppPadding.scaffoldSafeArea,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: AppFonts.openSans.bold24.withColor(Color(0xFF414652)),
            ),

            const SizedBox(height: 32),

            // ~ Goole Signin
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 197, 204, 218)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
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
                children: [
                  AuthFormTextfield(
                    controller: _email,
                    label: "Email",
                    hint: "Enter your email",
                    icon: Assets.icons.mail.svg(),
                  ),

                  SizedBox(height: 31.h),

                  AuthFormTextfield(
                    controller: _password,
                    label: "Password",
                    hint: "********",
                    icon: Assets.icons.passwordHide.svg(),
                  ),

                  SizedBox(height: 71.h),

                  ElevatedButton(
                    onPressed: _isloading ? null : _handleLogin,
                    child: _isloading
                        ? CircularProgressIndicator()
                        : Text('Sign In', style: AppFonts.inter.regular20),
                  ),
                ],
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
                      ..onTap = () {}, // TODO: Assign controls
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
