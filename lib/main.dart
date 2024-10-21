import 'package:dalel/app/dalel_app.dart';
import 'package:dalel/core/functions/check_auth.dart';
import 'package:dalel/data/cache_helper.dart';
import 'package:dalel/firebase_options.dart';
import 'package:dalel/services/service_lockator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const Dalel());
}
