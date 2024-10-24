import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/presentation/home_app_bar_widget.dart';
import 'package:dalel/features/home/widgets/custom_category_list_view.dart';
import 'package:dalel/features/home/widgets/period_details_section.dart';
import 'package:dalel/features/home/widgets/period_wars_section.dart';
import 'package:dalel/widgets/custom_header_text_widget.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodItemDetailsView extends StatelessWidget {
  const HistoricalPeriodItemDetailsView({super.key, required this.model});
  final HistoricalPeriodsModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SafeArea(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(child: CustomHomeViewAppBar()),
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(
                      child: PeriodDetailsSection(
                    periodName: model.name,
                    description: model.description,
                    imageUrl: model.image,
                  )),
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(
                      child: PeriodWarsSection(
                    warsList: model.wars,
                  )),
                  const SliverToBoxAdapter(child: RecommendationsSection()),
                ],
              ),
            )));
  }
}

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeaderText(text: AppStrings.historicalPeriods),
          SizedBox(height: 15),
          CustomCategoryListView(),
          SizedBox(height: 30),
        ]);
  }
}
