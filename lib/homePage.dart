import 'dart:async';
import 'dart:html';

import 'package:ant_icons/ant_icons.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/bestSelling.dart';
import 'package:flutter_web/bottomBar.dart';
import 'package:flutter_web/midImages.dart';
import 'package:flutter_web/newArrival.dart';
import 'package:flutter_web/products.dart';
import 'package:flutter_web/slideImages.dart';
import 'package:flutter_web/topBar.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreenGrid = currentWidth > 1201;

    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SlideImages(),
                  Products(),
                  Container(
                    margin: EdgeInsets.only(
                        top: smallScreenGrid ? 70.0 : 40.0,
                        bottom: smallScreenGrid ? 70.0 : 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            'New arrivals',
                            style: TextStyle(
                                fontSize: smallScreenGrid ? 30.0 : 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  NewArrival(),
                  Container(
                    margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[600],
                          elevation: 0.0,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          padding: EdgeInsets.all(18.0),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                          child: Text(
                            'Load More',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  MidImages(),
                  Container(
                    margin: EdgeInsets.only(
                        top: smallScreenGrid ? 50.0 : 30.0,
                        bottom: smallScreenGrid ? 50.0 : 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            'Top Selling Products',
                            style: TextStyle(
                                fontSize: smallScreenGrid ? 30.0 : 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  BestSelling(),
                  SizedBox(height: 100.0),
                  BottomBar(),
                ],
              ),
            ),
            Container(
              height: 80.0,
              child: Material(
                elevation: 0.0,
                child: TopBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
