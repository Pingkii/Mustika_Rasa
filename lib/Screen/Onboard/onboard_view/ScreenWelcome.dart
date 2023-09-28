import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';
import 'package:get/get.dart';
import 'Page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'package:flutter_application_1/Share/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../onboard_controller/onboard_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Page view
          PageView(
            controller: controller.indicator,
            onPageChanged: ((value) {
              controller.page.value = value;
              print(controller.page.value);
            }),
            children: [
              WelcomePage1(),
              WelcomePage2(),
              WelcomePage3(),
            ],
          ),

          // Lewati
          Container(
            alignment: Alignment(0.8, -0.85),
            child: GestureDetector(
              onTap: () {
                controller.indicator.jumpToPage(3);
              },
              child: Text('Skip'),
            ),
          ),
          Obx(() => Container(
                alignment: Alignment(0, 0.85),
                child: controller.page.value != 2
                    ? SmoothPageIndicator(
                        controller: controller.indicator,
                        count: 3,
                        effect: SlideEffect(
                          activeDotColor: kActiveIconColor,
                          spacing: 8.0,
                          radius: 4.0,
                          dotWidth: 8,
                          dotHeight: 8,
                          dotColor: kShadowColor,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                        },
                        child: Container(
                          height: 55,
                          width: Get.width * 0.8,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            color: kActiveIconColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Getting Started',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kShadowColor,
                            ),
                          ),
                        ),
                      ),
              ))
        ],
      ),
    );
  }
}
