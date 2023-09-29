import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Share/constant.dart';
import 'package:get/get.dart';

class ResepWidget extends StatelessWidget {
  final String image;
  final String? title;

  const ResepWidget({
    required this.image,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: Get.height * 0.24,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/${image}',
            width: Get.width,
            height: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          AutoSizeText(
            '$title',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
