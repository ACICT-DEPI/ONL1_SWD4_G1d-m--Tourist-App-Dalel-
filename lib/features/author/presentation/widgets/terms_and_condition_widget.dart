import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/author/presentation/widgets/custom_check_box.dart';
import 'package:dalel/features/author/presentation/widgets/custom_texts_span.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCheckBox(),
        CustomTextSpan(
          text1: AppStrings.iHaveAgreeToOur,
          text2: AppStrings.termsAndCondition,
        ),
      ],
    );
  }
}
