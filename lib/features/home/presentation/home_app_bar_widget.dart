import 'package:dalel/core/uitils/app_assets.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.assetsImagesMenu),
        Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64.copyWith(fontSize: 22),
        ),
      ],
    );
  }
}