import 'package:get/get.dart';

class AdController extends GetxController {
  var currentIndex = 0.obs;

  void onIndexChanged(int index) {
    currentIndex.value = index;
  }
}
