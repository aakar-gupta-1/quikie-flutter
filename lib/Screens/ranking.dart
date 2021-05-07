import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_test/Components/custom_appbar.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../style.dart';

class Ranking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(93),
        child: CustomAppbar(),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Text(
                  "RANKING",
                  style: TextStyle(color: textColor),
                ),
                Expanded(child: SizedBox()),
                Text("Monthly", style: TextStyle(color: textColor)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: FlutterSwitch(
                    activeColor: primaryColor,
                    inactiveColor: primaryColor,
                    toggleColor: toggle,
                    width: 50.0,
                    height: 30.0,
                    toggleSize: 18.0,
                    value: status,
                    borderRadius: 30.0,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
                Text("Yearly", style: TextStyle(color: textColor)),
              ])),
          Expanded(
            child: Container(
              child: ListView.builder(
                // physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (c, i) => tile(i),
                itemCount: 5,
              ),
            ),
          )
        ],
      ),
    );
  }

  List colors = [
    Colors.yellow,
    Colors.yellow,
    Colors.orange,
    Colors.deepPurple,
    Colors.pinkAccent
  ];

  Widget tile(int index) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
        child: Column(
          children: [
            Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 35, left: 5),
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(color: textColor),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/sample2.jpg",
                    ),
                    radius: 18.5,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Henry Ramirez",
                        style: TextStyle(color: textColor),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white70,
                            size: 10,
                          ),
                          Text("17880",
                              style: TextStyle(color: textColor, fontSize: 10))
                        ],
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.message,
                    color: colors[index],
                  )
                ]),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: grey,
            )
          ],
        ));
  }
}
