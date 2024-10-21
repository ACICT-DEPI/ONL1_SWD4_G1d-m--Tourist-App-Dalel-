import 'package:dalel/core/routes/route_app.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:flutter/material.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ourRouter,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
    );
  }
}