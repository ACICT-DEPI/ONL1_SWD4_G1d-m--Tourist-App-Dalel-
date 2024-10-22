import 'package:dalel/core/functions/navigate_push.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:dalel/data/cache_helper.dart';
import 'package:dalel/services/service_lockator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool onBoardingvisited =
        getIt<CacheHelper>().getData(key: "onBoardingvisited") ?? false;
    if (onBoardingvisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, '/loginScreen')
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigate(context, '/home')
              : delayedNavigate(context, '/loginScreen');
    } else {
      delayedNavigate(context, '/onBoarding');
    }
    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Center(
          child: Text(
        'Dalel',
        style: CustomTextStyles.pacifico400style64,
      )),
    );
  }
}

void delayedNavigate(context, String path) {
  Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () {
      pushReplacementNavigate(context, path);
    },
  );
}
