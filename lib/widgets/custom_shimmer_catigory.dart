import 'package:dalel/core/uitils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerCatigory extends StatelessWidget {
  const CustomShimmerCatigory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Shimmer.fromColors(
            baseColor: AppColors.grey,
            highlightColor: Colors.white,
            child: Container(
              width: 170,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        SizedBox(
          child: Shimmer.fromColors(
            baseColor: AppColors.grey,
            highlightColor: Colors.white,
            child: Container(
              width: 170,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
