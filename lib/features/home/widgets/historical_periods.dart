import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/features/home/cubit/home_cubit.dart';
import 'package:dalel/features/home/cubit/home_state.dart';
import 'package:dalel/widgets/custom_shimmer_catigory.dart';
import 'package:dalel/features/home/widgets/historical_periods_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is GetHistoricalPeriodsFailure) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        return state is GetHistoricalPeriodsLoading
            ? const CustomShimmerCatigory()
            : SizedBox(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return HistoricalPeriodItem(
                        model: context
                            .read<HomeCubit>()
                            .historicalPeriodsList[index],
                      );
                    },
                    clipBehavior: Clip.none,
                    itemCount:
                        context.read<HomeCubit>().historicalPeriodsList.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    }),
              );
      },
    );
  }
}
