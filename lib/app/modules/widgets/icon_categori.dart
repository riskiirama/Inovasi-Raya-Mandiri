import 'package:flutter/material.dart';

Widget categoriC(name, image) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              scale: 0.1,
            ),
            borderRadius: BorderRadius.circular(6),
            // border: Border.all(
            //   color: Colors.blueAccent,
            //   width: 2,
            // ),
            // gradient: LinearGradient(
            //   begin: Alignment.topRight,
            //   end: Alignment.bottomLeft,
            //   stops: [
            //     0.2,
            //     0.6,
            //   ],
            //   colors: [
            //     Colors.blue,
            //     Color.fromARGB(255, 74, 132, 214),
            //   ],
            // ),
          ),
        ),
      ),
      SizedBox(height: 8),
      Text(name)
    ],
  );
}
