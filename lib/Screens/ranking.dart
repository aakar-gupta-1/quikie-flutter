import 'package:flutter/material.dart';
import 'package:quikie_test/Components/custom_appbar.dart';

import '../style.dart';

class Ranking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(93),
        child: CustomAppbar(),
      ),
      body: Container(),
    );
  }
}
