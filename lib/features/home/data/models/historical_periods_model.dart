import 'package:dalel/core/data/models/data_model.dart';
import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/home/data/models/wars_model.dart';

class HistoricalPeriodsModel extends DataModel{
  final List<WarsModel> wars;

  HistoricalPeriodsModel(
      {required super.name,
      required super.image,
      required super.description,
      required this.wars});
  factory HistoricalPeriodsModel.fromJson(jsonData, warsList) {
    return HistoricalPeriodsModel(
      name: jsonData[FirebaseStrings.name],
      image: jsonData[FirebaseStrings.image],
      description: jsonData[FirebaseStrings.description],
      wars: warsList,
    );
  }
}
