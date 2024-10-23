import 'package:dalel/core/uitils/app_strings.dart';

class HistoricalPeriodsModel {
  final String name;
  final String image;
  final String discription;
  final Map<String, dynamic> wars;

  HistoricalPeriodsModel(
      {required this.name,
      required this.image,
      required this.discription,
      required this.wars});
  factory HistoricalPeriodsModel.fromJson(jsonData) {
    return HistoricalPeriodsModel(
      name: jsonData[FirebaseStrings.name],
      image: jsonData[FirebaseStrings.image],
      discription: jsonData[FirebaseStrings.description],
      wars: jsonData[FirebaseStrings.wars],
    );
  }
}
