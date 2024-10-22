import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/author/presentation/widgets/custom_texts_span.dart';
import 'package:dalel/features/author/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/author/presentation/widgets/custom_sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomWelcomWidget(
                  text: AppStrings.welcome,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomSignUpForm(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextSpan(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                  onTap: () {
                    pushReplacementNavigate(context, "/SignInScreen");
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
