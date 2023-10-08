import 'package:flutter/material.dart';
import 'package:irama/app/modules/widgets/style.dart';

Widget titleProfile({btn, logo, title}) {
  return ListTile(
    onTap: btn,
    leading: logo,
    title: Text(
      title,
      style: TextStyle(fontSize: 12),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      size: 18,
      color: primaryC,
    ),
  );
}
