import 'package:dalel/core/uitils/app_assets.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomBanner extends StatelessWidget {
  const WelcomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            AppStrings.appName,
            style: CustomTextStyles.pacifico700style34,
          ),
          // const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.assetsImagesVector1),
              SvgPicture.asset(Assets.assetsImagesVector2),
            ],
          )
        ],
      ),
    );
  }
}
