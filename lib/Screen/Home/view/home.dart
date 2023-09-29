import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';
import 'package:flutter_application_1/Share/constant.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_application_1/Widget/Ad_Slide_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/Widget/MenuWidget.dart';
import 'package:flutter_application_1/Widget/Resep_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  static const List<String> menuNames = const [
    'Desert',
    'Masakan Hari Raya',
    'Makan Malam',
    'Sarapan',
    'Makan Siang',
    'Makanan Penutup',
  ];

  static const List<String> menuImages = const [
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  static const List<String> NameResep = const [
    'Resep Mango Sago',
    'Resep Es Kukul Buah',
    'Resep Pepes',
    'RotiCanai',
    'Resep Ayam Mentega',
    'Resep Udang Saus Padang',
  ];

  static const List<String> ImageResep = const [
    'Manggo.jpg',
    'eskukul.jpg',
    'Pepes.jpg',
    'Roticanai.jpg',
    'AyamMentega.jpg',
    'UdangSausPadang.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Mau Masak apa hari ini',
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      AdScreenWidgets(
                          image: 'Soto.jpg',
                          text:
                              '15 Resep Soto Nusantara Lezat Untuk Menu Sehari-hari'),
                      AdScreenWidgets(
                          image: 'Masakan-Kalimantan.jpg',
                          text:
                              '10 Resep Makanan Khas Kalimantan Wajib Coba, Unik dan Enak'),
                      AdScreenWidgets(
                          image: 'Tumpeng.jpg',
                          text:
                              'Cara Membuat Hiasan Tumpeng 17 Agustus Kreatif dan Menarik')
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {},
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  // Menu
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pilih sesuai dengan',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                          ),
                          itemCount: menuNames.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (index < menuNames.length) {
                                  Get.toNamed(
                                    Routes.RESEP,
                                    arguments: {
                                      'name': menuNames[index],
                                      'image': menuImages[index],
                                    },
                                  );
                                }
                              },
                              child: MenuItemWidgets(
                                image: menuImages[index],
                                label: menuNames[index],
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Resep Terbaru',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          color: kOrangeColor,
                          padding: const EdgeInsets.only(right: 10),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount: NameResep.length,
                            itemBuilder: ((context, index) {
                              return GestureDetector(
                                onTap: () {
                                  if (index < NameResep.length) {
                                    Get.toNamed(Routes.RESEP, arguments: {
                                      'title': NameResep[index],
                                      'image': ImageResep[index]
                                    });
                                  }
                                },
                                child: ResepWidget(
                                  image: ImageResep[index],
                                  title: NameResep[index],
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Artikel Terbaru',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          padding: const EdgeInsets.only(right: 10),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            itemCount: NameResep.length,
                            itemBuilder: ((context, index) {
                              return GestureDetector(
                                onTap: () {
                                  if (index < NameResep.length) {
                                    Get.toNamed(Routes.RESEP, arguments: {
                                      'title': NameResep[index],
                                      'image': ImageResep[index]
                                    });
                                  }
                                },
                                child: ResepWidget(
                                  image: ImageResep[index],
                                  title: NameResep[index],
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
