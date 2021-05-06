import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_test/Components/custom_appbar.dart';
import 'package:list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';

import '../style.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(93),
          child: CustomAppbar(),
        ),
        body: Column(
          children: [
            SizedBox(height: 40),
            Expanded(
              child: Container(
                child: ListWheelScrollViewX(
                    scrollDirection: Axis.horizontal,
                    itemExtent: 290,
                    diameterRatio: 10,
                    // magnification: 1.2,
                    // useMagnifier: true,
                    children: List.generate(10, (index) => carouselItem())),
              ),
            ),
          ],
        ));
  }

  Widget carousel(BuildContext context) {
    return SizedBox(
      // you may want to use an aspect ratio here for tablet support
      height: 400,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (BuildContext context, int itemIndex) {
          return carouselItem();
        },
      ),
    );
  }

  Widget carouselItem() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          image: AssetImage("assets/images/sample1.png"),
        ),
      ),
    );
    //   Container(
    //   margin: EdgeInsets.symmetric(horizontal: 20),
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //         image: AssetImage("assets/images/sample1.png"),
    //         fit: BoxFit.contain),
    //     // color: Colors.grey,
    //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
    //   ),
    // );
  }
}
