import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/message_detail_controller.dart';

class MessageDetailView extends GetView<MessageDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessageDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MessageDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
