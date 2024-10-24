import 'package:dalel/core/data/models/data_model.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/widgets/custom_header_text_widget.dart';
import 'package:dalel/widgets/customd_data_list_view.dart';
import 'package:flutter/material.dart';

class PeriodWarsSection extends StatelessWidget {
  const PeriodWarsSection({super.key, required this.warsList});
  final List<DataModel> warsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderText(text: AppStrings.historicalPeriods),
        const SizedBox(height: 15),
        CustomDataListView(modelList: warsList, routePath: "/warsDetailsView"),
        const SizedBox(height: 30),
      ],
    );
  }
}