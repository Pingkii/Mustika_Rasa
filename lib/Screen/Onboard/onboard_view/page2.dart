import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/constant.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  AutoSizeText(
                    "Nikmatnya makan masakan sendiri",
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    maxFontSize: 80,
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 16,
                    ),
                    maxLines: 3,
                    minFontSize: 16,
                  ),
                  Spacer(),
                  Container(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        "assets/images/Page2.jpg",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
