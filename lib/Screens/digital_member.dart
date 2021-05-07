import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_test/Components/custom_appbar.dart';

import '../style.dart';

class DigitalMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(93),
        child: CustomAppbar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("DIGITAL MEMBER CARD",
                style:
                    TextStyle(color: textColor, fontWeight: FontWeight.bold)),
          ),
          Expanded(child: SizedBox()),
          Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), color: grey),
                padding: EdgeInsets.all(5),
                child: Image.asset("assets/images/qr-code.png")),
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
