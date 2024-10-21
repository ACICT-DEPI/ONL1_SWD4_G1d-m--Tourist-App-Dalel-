import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomWelcomWidget extends StatelessWidget {
  const CustomWelcomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.welcome,
        style: TextStyles.poppins600style28.copyWith(
          color: AppColors.deepBrown,
        ),
      ),
    );
  }
}
