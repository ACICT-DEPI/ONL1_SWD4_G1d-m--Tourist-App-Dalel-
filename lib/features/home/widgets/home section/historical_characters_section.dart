import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/widgets/custom_category_list_view.dart';
import 'package:dalel/widgets/custom_header_text_widget.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        CustomHeaderText(text: AppStrings.historicalCharacters),
        SizedBox(height: 16),
        CustomCategoryListView(),
        SizedBox(height: 32),
      ],
    );
  }
}
