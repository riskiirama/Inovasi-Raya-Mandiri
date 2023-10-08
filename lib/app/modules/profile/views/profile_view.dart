import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:irama/app/modules/account_info/views/account_info_view.dart';
import 'package:irama/app/modules/login/views/login_view.dart';
import 'package:irama/app/modules/notification/views/notification_view.dart';
import 'package:irama/app/modules/widgets/profile_list.dart';

import '../../widgets/style.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    Widget AccountInfo() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white38,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 131, 131, 131).withOpacity(0.10),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              titleProfile(
                btn: () {},
                logo: Icon(
                  Icons.dark_mode,
                  color: primaryC,
                  size: 20,
                ),
                title: 'DarkMode',
              ),
              titleProfile(
                btn: () {},
                logo: Icon(
                  Icons.payments,
                  color: primaryC,
                  size: 20,
                ),
                title: 'Payment Methods',
              ),
              titleProfile(
                btn: () {
                  Get.to(
                    AccountInfoView(),
                  );
                },
                logo: Icon(
                  Icons.perm_device_information_rounded,
                  color: primaryC,
                  size: 20,
                ),
                title: 'Account Information',
              ),
            ],
          ),
        ),
      );
    }

    Widget detailInfo() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white38,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 131, 131, 131).withOpacity(0.10),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              titleProfile(
                btn: () {
                  Get.to(NotificationView());
                },
                logo: Icon(
                  Icons.notifications,
                  color: primaryC,
                  size: 20,
                ),
                title: 'Notification',
              ),
              titleProfile(
                btn: () {},
                logo: Icon(
                  Icons.telegram_outlined,
                  color: primaryC,
                  size: 20,
                ),
                title: 'Invite Friends',
              ),
              titleProfile(
                btn: () {},
                logo: Icon(
                  Icons.design_services_rounded,
                  color: primaryC,
                  size: 20,
                ),
                title: 'Terms of Services',
              ),
              titleProfile(
                btn: () {},
                logo: Icon(
                  Icons.app_settings_alt_sharp,
                  color: primaryC,
                  size: 20,
                ),
                title: 'Versi app',
              ),
            ],
          ),
        ),
      );
    }

    Widget btnlogout() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 33, 120, 187),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 131, 131, 131).withOpacity(0.10),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Apakah anda ingin Keluar ?'),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Tidak')),
                            TextButton(
                                onPressed: () => Get.to(LoginView()),
                                child: Text('Iya')),
                          ],
                        );
                      });
                },
                leading: Icon(
                  Icons.app_settings_alt_sharp,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            width: Get.width,
            height: 120,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //   // fit: BoxFit.cover,
                //   // image: AssetImage('assets/irama.png'),
                // ),
                // gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   stops: [
                //     0.2,
                //     0.6,
                //   ],
                //   colors: [
                //     Color.fromARGB(255, 46, 102, 179),
                //     Color.fromARGB(255, 74, 132, 214),
                //   ],
                // ),
                ),
            child: Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                border: Border.all(
                  color: primaryC,
                  width: 4,
                ),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/irama.png',
                  ),
                ),
              ),
            ),
          ),
          AccountInfo(),
          detailInfo(),
          btnlogout(),
        ],
      ),
    );
  }
}
