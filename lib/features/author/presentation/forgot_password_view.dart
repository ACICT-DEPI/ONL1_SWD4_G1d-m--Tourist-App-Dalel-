import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/author/presentation/widgets/custom_forgot_password_form.dart';
import 'package:dalel/features/author/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/author/presentation/widgets/forgot_password_image.dart';
import 'package:dalel/features/author/presentation/widgets/forgot_password_sub_title.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 100)),
          SliverToBoxAdapter(
              child: CustomWelcomWidget(text: AppStrings.forgotPassword)),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: ForgotPasswordImage()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: ForgotPasswordSubTitle()),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(child: CustomForgotPasswordForm()),
        ],
      ),
    );
  }
}
