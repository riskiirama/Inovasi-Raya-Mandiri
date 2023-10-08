import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Inovasi Raya Mandiri",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
