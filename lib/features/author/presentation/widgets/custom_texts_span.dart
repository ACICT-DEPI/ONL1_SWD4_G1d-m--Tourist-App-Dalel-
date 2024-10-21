import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan({super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(TextSpan(children: [
        TextSpan(text: text1),
        TextSpan(
            text: text2,
            style: TextStyles.poppins400style12
                .copyWith(decoration: TextDecoration.underline)),
      ])),
    );
  }
}
