import 'package:get/get.dart';

import '../controllers/semua_categori_controller.dart';

class SemuaCategoriBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SemuaCategoriController>(
      () => SemuaCategoriController(),
    );
  }
}
