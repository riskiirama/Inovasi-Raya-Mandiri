import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/semua_categori_controller.dart';

class SemuaCategoriView extends GetView<SemuaCategoriController> {
  @override
  Widget build(BuildContext context) {
    var c = Get.put(SemuaCategoriController());
    return GetBuilder<SemuaCategoriController>(
      init: c,
      initState: (state) {
        c.getData();
      },
      builder: (_) {
        return Obx(
          () {
            return Scaffold(
              appBar: AppBar(
                title: Text('Semua Categori'),
                centerTitle: true,
              ),
              body: c.loading.value == true
                  ? Center(child: CircularProgressIndicator())
                  : GridView.builder(
                      itemCount: c.categori.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 160,
                      ),
                      itemBuilder: (_, index) {
                        var el = c.categori[index];
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: 60,
                          height: 80,
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Get.width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/rias.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    el['name'] ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            );
          },
        );
      },
    );
  }
}
