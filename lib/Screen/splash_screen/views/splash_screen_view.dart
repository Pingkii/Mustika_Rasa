import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (() {
      Get.offAllNamed(Routes.ONBOARDING);
    }));
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/Splash.png'),
              scale: 2,
            ),
          ),
        ),
      ),
    ));
  }
}
