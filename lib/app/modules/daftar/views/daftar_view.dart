import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:irama/app/modules/login/views/login_view.dart';
import 'package:irama/app/modules/widgets/form_field_custom.dart';
import 'package:irama/app/modules/widgets/space.dart';
import 'package:irama/app/modules/widgets/style.dart';

import '../controllers/daftar_controller.dart';

class DaftarView extends GetView<DaftarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Inovasi Raya ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Mandiri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                )
              ],
            ),
            height40(),
            form1(
              text: 'Nama Lengkap',
            ),
            height20(),
            form1(
              text: 'Email',
            ),
            height20(),
            form1(
              text: 'No Hp',
            ),
            height20(),
            form1(
              text: 'Password',
            ),
            height20(),
            form1(
              text: 'Confirm Password',
            ),
            height20(),
            SizedBox(
              width: Get.width,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryC,
                ),
                onPressed: () {
                  Get.to(LoginView());
                },
                child: Text(
                  'Daftar',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah punya akun? '),
                InkWell(
                  onTap: () {
                    Get.to(LoginView());
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryC,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
