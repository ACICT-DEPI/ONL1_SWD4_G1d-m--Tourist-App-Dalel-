import 'package:dalel/data/cache_helper.dart';
import 'package:dalel/services/service_lockator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "onBoardingvisited", value: true);
}
