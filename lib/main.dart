import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:quikie_test/Screens/digital_member.dart';
import 'package:quikie_test/Screens/news.dart';
import 'package:quikie_test/Screens/ranking.dart';
import 'package:quikie_test/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key Key}) : super(key: Key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: black,
      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      // decoration: NavBarDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   colorBehindNavBar: primaryColor,
      // ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [News(), DigitalMember(), Ranking(), Container()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      // title: ("Home"),
      activeColorPrimary: secondaryColor,
      inactiveColorPrimary: grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.qrcode_viewfinder),
      // title: ("QR"),
      activeColorPrimary: secondaryColor,
      inactiveColorPrimary: grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.star),
      // title: ("Rewards"),
      activeColorPrimary: secondaryColor,
      inactiveColorPrimary: grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.cart),
      // title: ("Cart"),
      activeColorPrimary: secondaryColor,
      inactiveColorPrimary: grey,
    ),
  ];
}
