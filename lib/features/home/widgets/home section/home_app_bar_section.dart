import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/widgets/historical_periods.dart';
import 'package:dalel/widgets/custom_header_text_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 28),
        CustomHeaderText(text: AppStrings.historicalPeriods),
        SizedBox(height: 32),
        HistoricalPeriods(),
      ],
    );
  }
}