import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irama/app/modules/login/views/login_view.dart';
import 'package:irama/app/modules/onboarding/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Get.off(OnboardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/irama.png',
              width: Get.width,
              height: Get.height,
            ),
          ],
        ),
      ),
    );
  }
}
