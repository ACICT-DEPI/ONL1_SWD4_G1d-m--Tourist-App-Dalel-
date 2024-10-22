import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/author/presentation/widgets/custom_sign_in_form.dart';
import 'package:dalel/features/author/presentation/widgets/custom_texts_span.dart';
import 'package:dalel/features/author/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/author/presentation/widgets/welcome_banner.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomWelcomWidget(
              text: AppStrings.welcomeBack,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 88,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextSpan(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () {
                pushReplacementNavigate(context, "/registerScreen");
              },
            ),
          ),
        ],
      ),
    );
  }
}
