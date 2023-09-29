import 'package:flutter/material.dart';
import 'package:flutter_application_1/Share/constant.dart';

class MenuItemWidgets extends StatelessWidget {
  final String image;
  final String? label;

  const MenuItemWidgets({
    required this.image,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kOrangeLight),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/menu/${image}'),
                scale: 2,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          '${label}',
          style: regular.copyWith(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
