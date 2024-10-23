import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/on%20boaring/data/models/on_boarding_model.dart';
import 'package:dalel/features/on%20boaring/functions/onboarding_visited.dart';
import 'package:dalel/widgets/custom_buttom.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/gesture_detector_text.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currIndex, required this.controller});
  final int currIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currIndex == onBoardingList.length - 1) {
      return Column(
        children: [
          CustomButton(
            buttonString: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisited();
              customNavigate(context, '/SignUpScreen');
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetectorText(
              text: AppStrings.loginNow,
              function: () {
                onBoardingVisited();
                pushReplacementNavigate(context, '/SignInScreen');
              },
            ),
          )
        ],
      );
    } else {
      return Column(
        children: [
          CustomButton(
            buttonString: AppStrings.next,
            onPressed: () {
              controller.nextPage(
                  duration: const Duration(microseconds: 300),
                  curve: Curves.bounceIn);
            },
          ),
          const SizedBox(height: 16),
        ],
      );
    }
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
