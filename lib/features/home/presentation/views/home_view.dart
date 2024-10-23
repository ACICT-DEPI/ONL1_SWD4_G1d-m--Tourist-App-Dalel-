import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/presentation/home_app_bar_widget.dart';
import 'package:dalel/features/home/widgets/custom_category_list_view.dart';
import 'package:dalel/features/home/widgets/historical_periods.dart';
import 'package:dalel/widgets/custom_header_text_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CustomHomeViewAppBar()),
              SliverToBoxAdapter(child: SizedBox(height: 28)),
              SliverToBoxAdapter(
                  child: CustomHeaderText(text: AppStrings.historicalPeriods)),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(child: HistoricalPeriods()),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(
                  child:
                      CustomHeaderText(text: AppStrings.historicalCharacters)),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: CustomCategoryListView()),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(
                  child:
                      CustomHeaderText(text: AppStrings.historicalSouvenirs)),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: CustomCategoryListView()),
            ],
          ),
        ),
      ),
    );
  }
}
