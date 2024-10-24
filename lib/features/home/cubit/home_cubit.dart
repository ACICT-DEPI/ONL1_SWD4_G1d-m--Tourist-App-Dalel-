import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/cubit/home_state.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/data/models/wars_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<HistoricalPeriodsModel> historicalPeriodsList = [];
  List<WarsModel> warsList = [];
  getHestoricalPeriods() async {
    try {
      emit(GetHistoricalPeriodsLoading());
      await FirebaseFirestore.instance
          .collection(FirebaseStrings.historicalPeriods)
          .get()
          .then(
            (value) => value.docs.forEach(
              (element) async {
                await FirebaseFirestore.instance
                    .collection(FirebaseStrings.historicalPeriods)
                    .doc(element.id)
                    .collection(FirebaseStrings.wars)
                    .get()
                    .then((value) => value.docs.forEach((element) {
                          warsList.add(WarsModel.fromjson(element.data()));
                        }));
                historicalPeriodsList.add(
                  HistoricalPeriodsModel.fromJson(
                    element.data(),
                    warsList,
                  ),
                );
                emit(GetHistoricalPeriodsSuccess());
              },
            ),
          );
    } on Exception catch (e) {
      emit(GetHistoricalPeriodsFailure(errMessage: e.toString()));
    }
  }
}
