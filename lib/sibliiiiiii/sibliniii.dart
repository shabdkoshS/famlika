// ignore_for_file: unused_local_variable

import 'package:famlikadev_logo/sibliiiiiii/mock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(backgroundColor: Color(0x830f0f)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DisplaEgg());
  }
}

class DisplaEgg extends StatefulWidget {
  DisplaEgg({super.key});

  @override
  State<DisplaEgg> createState() => _DisplaEggState();
}

class _DisplaEggState extends State<DisplaEgg> {
  List<String> siblingimages = [
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg"
  ];
  List<String> siblingnames = ["a", "b", "c", "d", "e"];
  String? siblingimg;
  String? siblingnme;
  bool selected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    siblingimg = siblingimages[0];
    siblingnme = siblingnames[0];
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var count = 4;
    var widthFactor = .5;
    void change() {
      print("calling");
      setState(() {
        count = siblingimages.length;
        widthFactor = 1.0;
      });
    }

    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: (MediaQuery.of(context).size.width * 0.5) - 15,
            child: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.amber,
              size: 30,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            left: (MediaQuery.of(context).size.width * 0.5) - 1,
            child: CContainer(
              cwidth: 2,
              cheight: MediaQuery.of(context).size.height * 0.095,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.245,
            left: (MediaQuery.of(context).size.width * 0.25),
            child: CContainer(
                cheight: 2,
                cwidth: selected == false
                    ? (MediaQuery.of(context).size.width * 0.5)
                    : (MediaQuery.of(context).size.width * 0.66)
                // cwidth: widthFactor == .5
                //     ? (MediaQuery.of(context).size.width * 0.5)
                //     : (MediaQuery.of(context).size.width * 0.8),
                )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.245,
            left: (MediaQuery.of(context).size.width * 0.25),
            child: CContainer(
              cheight: (MediaQuery.of(context).size.width * 0.5),
              cwidth: 2,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.245,
            left: (MediaQuery.of(context).size.width * 0.4),
            child: CContainer(
              cheight: (MediaQuery.of(context).size.width * 0.1),
              cwidth: 2,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.62,
            left: (MediaQuery.of(context).size.width * 0.5) - 1,
            child: CContainer(
              cwidth: 2,
              cheight: MediaQuery.of(context).size.height * 0.2,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.62,
            left: (MediaQuery.of(context).size.width * 0.25),
            child: CContainer(
              cheight: 2,
              cwidth: (MediaQuery.of(context).size.width * 0.5),
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.29,
          left: (MediaQuery.of(context).size.width * 0.4) - 55,
          child: DisplayWidget(
            imagehgt: 80,
            imagewdt: 80,
            imagebradius: 40,
            cthgt: 56,
            ctwdt: 110,
            imageUrl: siblingimages[0],
            persongname: siblingnames[0],
            personrelation: "Sibling",
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.245,
          left: (MediaQuery.of(context).size.width * 0.55) - 22.5,
          // left: (MediaQuery.of(context).size.width * 0.648) - 22.5,
          child: selected == false
              ? Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.063),
                  child: Container(
                    height: 80,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: count >= 4 ? 5 : siblingimages.length + 1,
                      itemBuilder: (context, index) => !(index == count)
                          ? InkWell(
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                change();
                                setState(() {
                                  siblingimg = siblingimages[index];
                                  siblingnme = siblingnames[index];
                                });
                              },
                              child: Align(
                                widthFactor: widthFactor,
                                child: DisplaySmallWidget(
                                  siblingname: siblingnames[index],
                                  sinblingimage:
                                      AssetImage("${siblingimages[index]}"),
                                  simagehgt: 40,
                                  simagewdt: 40,
                                  simagebradius: 20,
                                ),
                              ),
                            )
                          : InkWell(
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                change();
                                setState(() {
                                  selected = true;
                                  siblingimg = siblingimages[index];
                                  siblingnme = siblingnames[index];
                                });
                              },
                              child: Align(
                                widthFactor: widthFactor,
                                child: DisplaySmallWidget(
                                  simagehgt: 40,
                                  simagewdt: 40,
                                  simagebradius: 20,
                                  stext: "+2",
                                  siblingname: '',
                                ),
                              ),
                            ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.227,
                    width: 300,
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          selected = false;
                        });
                      },
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: siblingimages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 + 80,
                              width: 110,
                              child: Stack(children: [
                                Positioned(
                                  top: -10,
                                  left: 110 / 2,
                                  child: CContainer(
                                    cwidth: 2,
                                    cheight:
                                        MediaQuery.of(context).size.height *
                                            0.1,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child: DisplayWidget(
                                    imagehgt: 80,
                                    imagewdt: 80,
                                    imagebradius: 40,
                                    cthgt: 56,
                                    ctwdt: 110,
                                    imageUrl: siblingimages[index + 1],
                                    persongname: siblingnames[index + 1],
                                    personrelation: "Sibling",
                                  ),
                                ),
                              ]),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.04,
          left: (MediaQuery.of(context).size.width * 0.25) - 55,
          child: DisplayWidget(
            imagehgt: 80,
            imagewdt: 80,
            imagebradius: 40,
            cthgt: 56,
            ctwdt: 110,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.04,
          left: (MediaQuery.of(context).size.width * 0.75) - 55,
          child: DisplayWidget(
            imagehgt: 80,
            imagewdt: 80,
            imagebradius: 40,
            cthgt: 56,
            ctwdt: 110,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.54,
          left: (MediaQuery.of(context).size.width * 0.25) - 55,
          child: DisplayWidget(
            imagehgt: 80,
            imagewdt: 80,
            imagebradius: 40,
            cthgt: 56,
            ctwdt: 110,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.54,
          left: (MediaQuery.of(context).size.width * 0.75) - 55,
          child: DisplayWidget(
            imagehgt: 80,
            imagewdt: 80,
            imagebradius: 40,
            cthgt: 56,
            ctwdt: 110,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.77,
          left: (MediaQuery.of(context).size.width * 0.5) - 55,
          child: DisplayWidget(
            imagehgt: 80,
            imagewdt: 80,
            imagebradius: 40,
            cthgt: 56,
            ctwdt: 110,
          ),
        ),
      ],
    ));
  }
}
