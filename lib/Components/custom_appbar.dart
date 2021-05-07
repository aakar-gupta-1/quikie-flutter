import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_test/Screens/profile.dart';

import '../style.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(children: [
            SizedBox(width: 20),
            InkWell(
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Profile()),
                )
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/sample2.jpg",
                ),
                radius: 25,
              ),
            ),
            SizedBox(width: 15),
            Text(
              "David W",
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(child: Container()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Points",
                  style: TextStyle(color: grey, fontSize: 12),
                ),
                SizedBox(height: 10),
                Text(
                  "40",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
            SizedBox(width: 18),
            Container(
              width: 51.0,
              height: 51.0,
              decoration: new BoxDecoration(
                border: Border.all(color: Colors.blue, width: 3),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 20),
          ]),
        ],
      ),
      // actions: [
      //   Container(
      //     margin: EdgeInsets.all(4),
      //     padding: EdgeInsets.all(6),
      //     child: Column(
      //       children: [
      //         Text(
      //           "Points",
      //           style: TextStyle(fontSize: 12),
      //         ),
      //         Text(
      //           "40",
      //           style: TextStyle(fontSize: 16),
      //         )
      //       ],
      //     ),
      //   ),
      //   CircleAvatar()
      // ],
    );
  }
}
