import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_test/Components/custom_appbar.dart';
import 'package:list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';

import '../style.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  int position = 0;
  currentElement(int i) {
    setState(() {
      position = i;
    });
  }

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
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("NEWS", style: TextStyle(color: grey)),
            ),
            Expanded(
              child: Container(
                child: ListWheelScrollViewX(
                    onSelectedItemChanged: (i) => currentElement(i),
                    scrollDirection: Axis.horizontal,
                    itemExtent: 310,
                    diameterRatio: 10,
                    // magnification: 1.2,
                    // useMagnifier: true,
                    children:
                        List.generate(10, (index) => carouselItem(index))),
              ),
            ),
          ],
        ));
  }

  // Widget carousel(BuildContext context) {
  //   return SizedBox(
  //     height: 400,
  //     child: PageView.builder(
  //       controller: PageController(viewportFraction: 0.8),
  //       itemBuilder: (BuildContext context, int itemIndex) {
  //         return carouselItem(itemIndex);
  //       },
  //     ),
  //   );
  // }

  Widget carouselItem(int i) {
    if (i == position)
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 470,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage("assets/images/sample1.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            decoration: BoxDecoration(
                color: Color.fromRGBO(23, 23, 50, 1),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15))),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Text("Nike Joyride",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white70)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Lorem ipsum dolor sit amet, consectetur",
                      style: TextStyle(color: Colors.white70)),
                ),
              ],
            ),
          )
        ],
      );
    else
      return Container(
        height: 450,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(
            image: AssetImage("assets/images/sample1.png"),
            fit: BoxFit.fill,
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
