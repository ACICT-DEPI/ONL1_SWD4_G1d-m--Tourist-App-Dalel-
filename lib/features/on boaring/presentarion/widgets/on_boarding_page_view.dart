import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:dalel/features/on%20boaring/data/models/on_boarding_model.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/custom_text.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/smooth_dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.controller, this.onPageChanged,

  });

  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 290,
                width: 3930,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingList[index].image),
                    fit: BoxFit.fill,
                  ),
                  
                ),
                
              ),
              const SizedBox(height: 16),
              SmoothDotsIndicator(controller: controller),
              const SizedBox(height: 16),
              CustomText(
                text: onBoardingList[index].title,
                style:
                    TextStyles.poppins500style24.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomText(
                  text: onBoardingList[index].subTitle,
                  style: TextStyles.poppins300style16),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}
