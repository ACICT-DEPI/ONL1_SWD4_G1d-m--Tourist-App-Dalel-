import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/core/data/models/data_model.dart';
import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomDataListViewItem extends StatelessWidget {
  const CustomDataListViewItem({super.key, required this.model, required this.routePath});
  final DataModel model;
  final String routePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(
          context, routePath,
          extra: model,
        );
      },
      child: Container(
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
              SizedBox(
                width: 62,
                height: 48,
                child: Text(
                  model.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: CachedNetworkImage(
                  imageUrl: model.image,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: AppColors.grey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 50,
                      height: 65,
                      color: AppColors.grey,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          )),
    );
  }
}
