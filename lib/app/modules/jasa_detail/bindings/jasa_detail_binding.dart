import 'package:get/get.dart';

import '../controllers/jasa_detail_controller.dart';

class JasaDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JasaDetailController>(
      () => JasaDetailController(),
    );
  }
}
