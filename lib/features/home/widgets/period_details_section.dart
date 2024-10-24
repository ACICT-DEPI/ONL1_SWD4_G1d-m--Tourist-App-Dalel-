import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/core/uitils/app_assets.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:dalel/widgets/custom_header_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PeriodDetailsSection extends StatelessWidget {
  const PeriodDetailsSection(
      {super.key,
      required this.periodName,
      required this.description,
      required this.imageUrl});
  final String periodName;
  final String description;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        CustomHeaderText(text: "${AppStrings.about} $periodName"),
        const SizedBox(width: 10),
        SvgPicture.asset(Assets.assetsImagesDetails1),
      ]),
      const SizedBox(
        height: 45,
      ),
      Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: -24,
                  child: SvgPicture.asset(Assets.assetsImagesDetails2)),
              SizedBox(
                  height: 220,
                  width: 200,
                  child: Text(
                    description,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.poppins500style14
                        .copyWith(color: AppColors.black),
                  )),
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 130,
            height: 200,
            child: CachedNetworkImage(imageUrl: imageUrl),
          )
        ],
      )
    ]);
  }
}
