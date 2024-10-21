import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.text, this.onFieldSubmitted, this.onChanged});
  final String text;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "This field is required";
            } else {
              return null;
            }
          },
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
            labelText: text,
            labelStyle: TextStyles.poppins400style12.copyWith(
              fontWeight: FontWeight.w200,
            ),
            focusedBorder: getOutLineBorder(),
            enabledBorder: getOutLineBorder(),
            border: getOutLineBorder(),
          )),
    );
  }
}

OutlineInputBorder getOutLineBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: AppColors.lightGrey,
      ));
}
