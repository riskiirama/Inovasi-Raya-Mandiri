import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../config/api_config.dart';

class SemuaCategoriController extends GetxController {
  List<dynamic> categori = [];
  var loading = false.obs;
  Future getData() async {
    try {
      loading.value = true;
      var res = await Dio().get(ApiConfig.base_url + "kategori");
      var json = res.data;
      if (json["status"] == true) {
        categori = json["data"];
      }
      loading.value = false;
      update();
    } on DioError catch (e) {
      print(e.message);
      loading.value = false;
    }
  }
}
