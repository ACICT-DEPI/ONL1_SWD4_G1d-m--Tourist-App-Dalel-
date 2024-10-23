import 'package:dalel/features/home/presentation/home_app_bar_widget.dart';
import 'package:dalel/features/home/widgets/home%20section/historical_characters_section.dart';
import 'package:dalel/features/home/widgets/home%20section/historical_souvenirs_section.dart';
import 'package:dalel/features/home/widgets/home%20section/home_app_bar_section.dart';
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
              SliverToBoxAdapter(child: HomeAppBarSection()),
              SliverToBoxAdapter(child: HistoricalCharactersSection()),
              SliverToBoxAdapter(child: HistoricalSouvenirsSection())
            ],
          ),
        ),
      ),
    );
  }
}
