import 'package:dalel/core/data/models/data_model.dart';
import 'package:dalel/widgets/custom_data_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomDataListView extends StatelessWidget {
  const CustomDataListView({
    super.key,
    required this.modelList, required this.routePath,
  });
  final List<DataModel> modelList;
  final String routePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomDataListViewItem(
              model: modelList[index],
              routePath: routePath,
            );
          },
          clipBehavior: Clip.none,
          itemCount: modelList.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          }),
    );
  }
}
