import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';
import 'package:flutter_application_1/Share/constant.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_application_1/Widget/Ad_Slide_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome To Mustika Rasa',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  // controller:controller.,
                  decoration: InputDecoration(
                    labelText: 'Mau Masak apa hari ini',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          CarouselSlider(
            items: [
              AdScreenWidgets(
                  image: 'page2.png',
                  text:
                      'Resep Seblak Cobek Viral Di TikTok Bikinnya Gampang banget loh'),
              AdScreenWidgets(
                  image: 'page2.png', text: 'Resep Seblak Cobek Viral Di Tik'),
              AdScreenWidgets(
                  image: 'page5.png', text: 'Resep Seblak Cobek Viral Di Tik')
            ],
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                // Lakukan sesuatu ketika halaman slider berubah
              },
            ),
          ),
          SizedBox(height: 10.0,),
          

          // Tambahkan widget lain di bawah CarouselSlider jika diperlukan
        ],
      ),
    );
  }
}
