import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/widgets/historical_periods_item.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance
          .collection(FirebaseStrings.historicalPeriods)
          .get(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        // if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
        //   return const Text("Document does not exist");
        // }

        if (snapshot.connectionState == ConnectionState.done) {
          List<HistoricalPeriodsModel> historicalPeriodsList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            historicalPeriodsList
                .add(HistoricalPeriodsModel.fromJson(snapshot.data!.docs[i]));
          }
          return SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HistoricalPeriodItem(
                    model: historicalPeriodsList[index],
                  );
                },
                itemCount: snapshot.data!.docs.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                }),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
