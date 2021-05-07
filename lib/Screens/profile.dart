import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_test/style.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white70,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "PROFILE",
          style: TextStyle(color: grey),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                "LOG OUT",
                style: TextStyle(color: grey),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Color.fromRGBO(24, 24, 53, 1),
                border: Border.all(color: Color.fromRGBO(24, 24, 53, 1))),
            child: CircleAvatar(
                backgroundImage: AssetImage(
              "assets/images/sample2.jpg",
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "David Walberg",
                // textAlign: TextAlign.center,
                style: TextStyle(color: grey),
              ),
              SizedBox(width: 5),
              Icon(Icons.edit, color: grey)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              circularIndicator("Level", 1),
              SizedBox(width: 50),
              circularIndicator("Points", 40)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              circularIndicator("Monthly Ranking", 52),
              SizedBox(width: 50),
              circularIndicator("Yearly Ranking", 520)
            ],
          ),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget circularIndicator(String text, int val) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(12),
            height: 77,
            width: 77,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color.fromRGBO(24, 24, 53, 1))),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(24, 24, 53, 1),
              child: Text(
                val.toString(),
                style: TextStyle(fontSize: 14, color: grey),
              ),
            )),
        SizedBox(
          width: 77,
          child: Text(
            text,
            style: TextStyle(
              color: grey,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
