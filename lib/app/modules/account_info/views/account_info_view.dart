import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:irama/app/modules/widgets/space.dart';
import 'package:irama/app/modules/widgets/style.dart';
import '../controllers/account_info_controller.dart';

class AccountInfoView extends GetView<AccountInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryC,
        elevation: 0,
        title: Text('Account Info'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          height10(),
          Container(
            height: 180,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Container(
                alignment: Alignment.bottomRight,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/1.png',
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ),
          height10(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 280,
            width: Get.width,
            decoration: BoxDecoration(
                // color: Colors.blue,
                ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                    ),

                    // hintText: 'test',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
