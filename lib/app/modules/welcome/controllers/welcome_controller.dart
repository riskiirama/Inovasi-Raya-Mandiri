import 'package:get/get.dart';
import 'package:irama/app/modules/booking/views/booking_view.dart';
import 'package:irama/app/modules/home/views/home_view.dart';
import 'package:irama/app/modules/message/views/message_view.dart';
import 'package:irama/app/modules/profile/views/profile_view.dart';

class WelcomeController extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    HomeView(),
    BookingView(),
    MessageView(),
    ProfileView(),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
