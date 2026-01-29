import 'package:agrobridge_mobile/core/constants/spacing.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@routePage
class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final addressController = useTextEditingController();
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: AppPadding.scaffoldSafeArea,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Account Information"),
            Divider(),
            ProfileViewTextField(
              controller: usernameController,
              label: "Username",
            ),
            ProfileViewTextField(controller: emailController, label: "Email"),

            // ~ Prefrence Section
            ProfileViewTextField(
              controller: addressController,
              label: "Delivery Address",
            ),

            // ~ Password Reset Section
            ProfileSectionHeader(label: "Change Password"),
            ProfileViewTextField(
              controller: oldPasswordController,
              label: "Old Password",
            ),
            ProfileViewTextField(
              controller: newPasswordController,
              label: "New Password",
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileViewTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  const ProfileViewTextField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? ""),
        TextField(controller: controller),
      ],
    );
  }
}

class ProfileSectionHeader extends StatelessWidget {
  final String label;
  const ProfileSectionHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(label), Divider()],
    );
  }
}
