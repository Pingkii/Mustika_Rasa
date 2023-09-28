import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';
import 'package:flutter_application_1/Share/constant.dart';
import '../controllers/artikel_controller.dart';

class ArtikelPage extends GetView<ArtikelPage> {
  const ArtikelPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}
