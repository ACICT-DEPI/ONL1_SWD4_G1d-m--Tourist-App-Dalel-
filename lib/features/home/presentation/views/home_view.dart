import 'package:dalel/core/uitils/app_assets.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/presentation/home_app_bar_widget.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HistoricalPeriodItem(),
        HistoricalPeriodItem(),
      ],
    );
  }
}

class HistoricalPeriodItem extends StatelessWidget {
  const HistoricalPeriodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey,
                  blurRadius: 10,
                  offset: const Offset(0, 5))
            ]),
        width: 165,
        height: 96,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 16,
            ),
            const SizedBox(
              width: 62,
              height: 48,
              child: Text(
                "Ancient Egypt",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.assetsImagesFrame,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ));
  }
}
