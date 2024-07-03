import 'package:famlikadev_logo/src/bottomnav/chat.dart';
import 'package:famlikadev_logo/src/bottomnav/home.dart';
import 'package:famlikadev_logo/src/bottomnav/post.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _MyApp();
}

class _MyApp extends State<bottom> {
  Widget? service;
  @override
  void initState() {
    service = HomeContent();
    super.initState();
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: service,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              selectedForegroundColor: Colors.black,
              // backgroundColor: Colors.yellow.shade800,
              extras: {"home": "home"}),
          FluidNavBarIcon(
              icon: Icons.chat_outlined,
              selectedForegroundColor: Colors.black,
              //backgroundColor: Colors.yellow.shade800,
              extras: {"Chat": "chat"}),
          FluidNavBarIcon(
              icon: Icons.bookmark_outline,
              selectedForegroundColor: Colors.black,
              // backgroundColor: Colors.yellow.shade800,
              extras: {"Post": "post"}),
        ],
        onChange: _handleNavigationChange,
        style: FluidNavBarStyle(
            barBackgroundColor: Colors.amber,
            iconUnselectedForegroundColor: Colors.black),
        scaleFactor: 1.5,
        defaultIndex: 0,
        itemBuilder: (icon, item) => Semantics(
          child: item,
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          service = HomeContent();
          break;
        case 1:
          service = ChatContent();
          break;
        case 2:
          service = PostContent();
          break;
      }
      service = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: service,
      );
    });
  }
}
