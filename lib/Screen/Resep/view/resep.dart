import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Routes/app_pages.dart';
import 'package:flutter_application_1/Share/constant.dart';
import '../controllers/resep_controller.dart';
import 'package:flutter_application_1/Widget/Resep_widget.dart';

class ResepPage extends GetView<ResepPage> {
  const ResepPage({Key? key}) : super(key: key);

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
                labelText: 'Cari Resep lebih mudah',
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
                  Text(
                    'Resep Terbaru',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: Get.height,
                    padding: const EdgeInsets.only(right: 10),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
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
            ))
          ],
        ));
  }
}
