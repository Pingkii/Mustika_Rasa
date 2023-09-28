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
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(
          image: AssetImage('assets/images/${image}'),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
          left: 10,
          right: 100,
          child: AutoSizeText(
            '$text',
            style: TextStyle(
                color: kTextColor, fontSize: 18, fontWeight: FontWeight.bold),
            maxFontSize: 20,
            minFontSize: 18,
            maxLines: 4,
          ),
        )
      ],
    );
  }
}
