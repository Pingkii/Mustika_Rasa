import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './Routes/app_pages.dart';

void main() => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        initialRoute: Routes.SPLASH_SCREEN,
        getPages: AppPages.routes,
        
        
      ),
    );
