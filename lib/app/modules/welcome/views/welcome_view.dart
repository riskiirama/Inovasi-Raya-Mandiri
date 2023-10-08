import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/style.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  final welcomeController = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: welcomeController.screens[welcomeController.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryC,
          type: BottomNavigationBarType.fixed,
          currentIndex: welcomeController.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book_outlined,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            welcomeController.currentIndex.value = index;
          },
        ),
      );
    });
  }
}
