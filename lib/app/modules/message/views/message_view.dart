import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widgets/space.dart';
import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Container(
              child: ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  child: Image.asset('assets/properti.png'),
                ),
                title: Text(
                  'Nama Pengirim',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Hi, my name is.....'),
                trailing: Text('08"03 Am'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
