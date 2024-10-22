import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomWelcomWidget extends StatelessWidget {
  const CustomWelcomWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: CustomTextStyles.poppins600style28.copyWith(
          color: AppColors.deepBrown,
        ),
      ),
    );
  }
}
