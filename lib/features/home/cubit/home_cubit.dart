import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/cubit/home_state.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<HistoricalPeriodsModel> historicalPeriodsList = [];
  getHestoricalPeriods() async {
    print("***********************************************this method");
    try {
      emit(GetHistoricalPeriodsLoading());
      await FirebaseFirestore.instance
          .collection(FirebaseStrings.historicalPeriods)
          .get()
          .then(
            (value) => value.docs.forEach(
              (element) {
                historicalPeriodsList.add(
                  HistoricalPeriodsModel.fromJson(
                    element.data(),
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
