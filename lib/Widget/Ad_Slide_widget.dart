import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Share/constant.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AdScreenWidgets extends StatelessWidget {
  final String? image;
  final String? text;
  const AdScreenWidgets({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: AssetImage('assets/images/${image}'),
          fit: BoxFit.cover,
          width: Get.width,
          height: Get.height * 0.3,
        ),
        Positioned(
          left: 10,
          right: 100,
          child: AutoSizeText(
            '$text',
            style: TextStyle(
              color: kBackgroundColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black, // Warna bayangan teks
                  blurRadius: 5.0, // Jarak blur bayangan
                  offset: Offset(2, 2), // Posisi bayangan (offsetX, offsetY)
                ),
              ],
            ),
            maxFontSize: 30,
            minFontSize: 18,
            maxLines: 4,
          ),
        )
      ],
    );
  }
}
