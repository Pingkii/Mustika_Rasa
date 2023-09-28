import 'package:get/get.dart';
import 'package:flutter_application_1/Screen/Home/view/home.dart';
import 'package:flutter_application_1/Screen/Artikel/view/Artikel.dart';
import 'package:flutter_application_1/Screen/Resep/view/resep.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    HomePage(),
    ArtikelPage(),
    ResepPage(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
