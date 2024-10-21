import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonColor,
      this.textColor,
      required this.buttonString,
      this.onPressed});
  final Color? buttonColor, textColor;
  final String buttonString;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: Text(
          buttonString,
          style: TextStyles.poppins300style16
              .copyWith(color: textColor ?? AppColors.offWhite),
        ),
      ),
    );
  }
}
