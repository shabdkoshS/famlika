// ignore_for_file: unnecessary_cast
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:famlikadev_logo/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              width: 220,
              height: 65,
              top: 354,
              left: 70,
              child: Center(
                child: AnimatedSplashScreen(
                  duration: 2500,
                  splash: "assets/imgspl.png",
                  nextScreen: Login(),
                  splashTransition: SplashTransition.fadeTransition,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Positioned(
              width: 215,
              height: 19,
              top: 427,
              left: 76,
              child: Text(
                "A space for family memories ",
                style: TextStyle(
                  fontFamily: 'Figtree',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
