import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:irama/app/modules/daftar/views/daftar_view.dart';
import 'package:irama/app/modules/welcome/views/welcome_view.dart';
import 'package:irama/app/modules/widgets/style.dart';

import '../../widgets/form_field_custom.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20),
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
              SizedBox(height: 40),
              form1(
                text: 'Email',
              ),
              SizedBox(height: 20),
              form1(
                text: 'Password',
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Lupa password?',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: Get.width,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryC,
                  ),
                  onPressed: () {
                    Get.offAll(WelcomeView());
                  },
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun? '),
                  InkWell(
                    onTap: () {
                      Get.to(DaftarView());
                    },
                    child: Text(
                      'Daftar',
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
      ),
    );
  }
}
