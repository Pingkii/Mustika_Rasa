import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ad_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdSlider extends StatelessWidget {
  final AdController adController = Get.find();
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('assets/images/Home.png'),
        Image.asset('assets/imagesa/page5.png'),
        Image.asset('assets/images/page10.png'),
      ],
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          adController.onIndexChanged(index);
        },
      ),
    );
  }
}
