import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/on%20boaring/functions/onboarding_visited.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/get_buttons.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/on_boarding_page_view.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/gesture_detector_text.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currindex = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 45),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetectorText(
                  text: AppStrings.skip,
                  function: () {
                    onBoardingVisited();
                    pushReplacementNavigate(context, '/SignUpScreen');
                  },
                ),
              ),
              OnBoardingPageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currindex = index;
                  });
                },
              ),
              GetButtons(
                currIndex: currindex,
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
