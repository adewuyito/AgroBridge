import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:agrobridge_mobile/core/extensions/font_extentions.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

    void _handleSignUp() async {}

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
                children: [
                  TextFormField(
                    controller: _companyName,
                    decoration: InputDecoration(
                      label: Text(
                        'Comapany Name',
                        style: AppFonts.inter.medium14,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _contactPerson,
                    decoration: InputDecoration(
                      label: Text(
                        'Contact Person',
                        style: AppFonts.inter.medium14,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      label: Text('Email', style: AppFonts.inter.medium14),
                      suffixIcon: Icon(Icons.mail),
                    ),
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: InputDecoration(
                      label: Text('Password', style: AppFonts.inter.medium14),
                      suffixIcon: Icon(Icons.remove),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _isloading ? null : _handleSignUp,
                    child: _isloading
                        ? CircularProgressIndicator()
                        : Text('Sign In'),
                  ),
                ],
              ),
            ),

            // ~ Signup redirect
            Text.rich(
              style: AppFonts.openSans.withColor(Color.fromRGBO(65, 70, 82, 1)),
              TextSpan(
                children: [
                  TextSpan(
                    text: "You don't have an account?",
                    style: AppFonts.openSans.regular14,
                  ),
                  TextSpan(
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
