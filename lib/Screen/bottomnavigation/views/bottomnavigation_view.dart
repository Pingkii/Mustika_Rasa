import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_application_1/Share/constant.dart';

import '../controllers/bottomnavigation_controller.dart';

class BottomnavigationPage extends GetView<BottomnavigationController> {
  const BottomnavigationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => SafeArea(
            child: controller.screens[controller.CurrentIndex.value],
          ),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: kOrangeColor,
            selectedIconTheme: IconThemeData(color: kActiveIconColor),
            unselectedIconTheme:
                IconThemeData(color: kActiveIconColor.withOpacity(0.5)),
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            type: BottomNavigationBarType.fixed,
            onTap: (index) => controller.SetIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(controller.CurrentIndex.value == 0
                              ? 'assets/icons/Home-active.png'
                              : 'assets/icons/Home.png'))),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(controller.CurrentIndex.value == 1
                              ? 'assets/icons/Articel-active.png'
                              : 'assets/icons/Articel.png'))),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(controller.CurrentIndex.value == 2
                              ? 'assets/icons/Resep-active.png'
                              : 'assets/icons/Resep.png'))),
                ),
                label: '',
              ),
            ],
          ),
        ));
  }
}
