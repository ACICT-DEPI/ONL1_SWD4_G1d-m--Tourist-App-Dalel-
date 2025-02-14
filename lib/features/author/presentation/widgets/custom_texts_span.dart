import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1, text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(TextSpan(children: [
          TextSpan(text: text1),
          TextSpan(
              text: text2,
              style: CustomTextStyles.poppins400style12
                  .copyWith(decoration: TextDecoration.underline)),
        ])),
      ),
    );
  }
}
