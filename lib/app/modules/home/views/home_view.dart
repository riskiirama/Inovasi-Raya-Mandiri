import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:irama/app/modules/jasa_detail/views/jasa_detail_view.dart';
import 'package:irama/app/modules/notification/views/notification_view.dart';
import 'package:irama/app/modules/semua_categori/views/semua_categori_view.dart';
import 'package:irama/app/modules/widgets/icon_categori.dart';
import 'package:irama/app/modules/widgets/space.dart';
import '../../widgets/style.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var c = Get.put(HomeController());
    Widget headers() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: Get.width,
        height: 130,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.2,
              0.6,
            ],
            colors: [
              Color.fromARGB(255, 46, 102, 179),
              Color.fromARGB(255, 74, 132, 214),
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(NotificationView());
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    Widget textCatergori() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Catergori',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SemuaCategoriView());
                  },
                  child: Text(
                    'Lihat semua',
                    style: TextStyle(
                      color: primaryC,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget iconCategori() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: c.categori
              .map(
                (e) => categoriC(e['name'] ?? "", 'assets/kontruksi.png'),
              )
              .toList(),
        ),
      );
    }

    Widget textAllJasa() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All jasa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // TextButton(
                //   onPressed: () {
                //     Get.to(SemuaCategori());
                //   },
                //   child: Text(
                //     'Lihat semua',
                //   ),
                // )
              ],
            ),
          ],
        ),
      );
    }

    return GetBuilder<HomeController>(
      init: c,
      initState: (state) {
        c.getData();
      },
      builder: (_) {
        return Obx(() {
          return Scaffold(
            body: c.loading.value == true
                ? Center(child: CircularProgressIndicator())
                : SafeArea(
                    child: ListView(
                      children: [
                        headers(),
                        textCatergori(),
                        iconCategori(),
                        SizedBox(height: 20),
                        Container(
                          width: Get.width,
                          height: 180,
                          decoration: BoxDecoration(
                              // color: Colors.blue,
                              ),
                          child: CarouselSlider(
                            items: [
                              Container(
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/08/03/21/37/construction-2578410_960_720.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2018/01/28/10/08/purchase-3113198__340.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2020/05/18/16/17/social-media-5187243__340.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                            options: CarouselOptions(
                              height: 380.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),
                          ),
                        ),
                        height20(),
                        textAllJasa(),
                        Expanded(
                          child: GridView.builder(
                            //wajib menggunakan 2 baris script di bawah ini, agar dapat digabung dengan widget lain
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,

                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                // banyak grid yang ditampilkan dalam satu baris
                                crossAxisCount: 2),
                            itemBuilder: (_, index) => Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              width: 60,
                              height: 80,
                              child: InkWell(
                                onTap: () {
                                  Get.to(JasaDetailView());
                                },
                                child: Card(
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: Get.width,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2016/11/23/14/45/coding-1853305__340.jpg',
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Nama Jasa",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            itemCount: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        });
      },
    );
  }
}
