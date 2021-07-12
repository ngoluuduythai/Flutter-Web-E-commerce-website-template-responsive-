import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/sideNavBar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _popupMenu() {
      return PopupMenuButton<int>(
        padding: EdgeInsets.all(0.0),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.user,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.5),
                    child: Text("My Profile"),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.heart_outline,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.0),
                    child: Text("Favorite"),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 3,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.shopping_cart,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.0),
                    child: Text("Cart"),
                  ),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 4,
            child: Container(
              width: 130,
              height: 50.0,
              child: Row(
                children: [
                  Icon(
                    AntIcons.login,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 05.0, top: 0.0),
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ],
        child: Padding(
          padding: EdgeInsets.only(top: 01.0),
          child: Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
            size: 28.0,
          ),
        ),
      );
    }

    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;
    var tabScreenGrid = currentWidth > 769;
    var mobileScreenGrid = currentWidth > 481;

    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(right: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                extraSmallScreenGrid
                    ? Container()
                    : Container(
                        padding: EdgeInsets.only(right: 20.0),
                        child: InkWell(
                          onTap: () {
                            showMaterialModalBottomSheet(
                              expand: false,
                              enableDrag: false,
                              isDismissible: false,
                              barrierColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              duration: Duration(seconds: 0),
                              context: context,
                              builder: (context) => GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop(false);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 280.0,
                                      child: SideNavBar(),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Icon(AntIcons.menu),
                        ),
                      ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        AntIcons.radar_chart,
                        size: 45.0,
                        color: Colors.indigo[600],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 05.0, top: 08.0),
                        child: Text(
                          'Shopsnine',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.indigo[600],
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                extraLargeScreenGrid
                    ? Container(
                        height: 40.0,
                        margin: EdgeInsets.only(left: 180.0),
                        width: largeScreenGrid
                            ? 500.0
                            : smallScreenGrid
                                ? 500.0
                                : 400.0,
                        child: TextField(
                          cursorColor: Colors.indigo[600],
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding:
                                    EdgeInsets.only(right: 10.0, bottom: 02.0),
                                child: Icon(
                                  FeatherIcons.search,
                                  color: Colors.indigo[600],
                                  size: 22.0,
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xFFEEEEEE),
                              contentPadding:
                                  EdgeInsets.only(left: 25.0, top: 30.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 15.0),
                              hintText: 'Search here...'),
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.black87),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          extraSmallScreenGrid
              ? Row(
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  top: 05.0,
                                  right: 20.0,
                                  bottom: 05.0),
                              child: Text(
                                'Top Offers',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 8.0,
                            top: 0.0,
                            child: Container(
                              height: 16.0,
                              width: 40.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  elevation: 0.0,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(50.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'New',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                          ),
                          padding: EdgeInsets.all(18.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 20.0),
                              child: Text(
                                'Exclusive',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                          ),
                          padding: EdgeInsets.all(18.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Text(
                                'Sale',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[600],
                          elevation: 0.0,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                          ),
                          padding: EdgeInsets.all(18.0),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(),
          Row(
            children: [
              extraLargeScreenGrid
                  ? Container()
                  : Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Tooltip(
                        message: 'Search',
                        child: Container(
                          padding: EdgeInsets.all(05.0),
                          child: Icon(
                            FeatherIcons.search,
                            size: 25.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
              tabScreenGrid
                  ? Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Tooltip(
                        message: 'Cart',
                        child: Container(
                          padding: EdgeInsets.all(05.0),
                          child: Stack(
                            children: <Widget>[
                              Icon(
                                AntIcons.shopping_cart,
                                size: 26.0,
                                color: Colors.black87,
                              ),
                              Positioned(
                                right: 4.0,
                                top: 1.0,
                                child: Stack(
                                  children: <Widget>[
                                    Icon(
                                      Icons.brightness_1,
                                      size: 08.0,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Tooltip(
                  message: 'Notification',
                  child: Container(
                    padding: EdgeInsets.all(05.0),
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          AntIcons.bell_outline,
                          size: 26.0,
                          color: Colors.black87,
                        ),
                        Positioned(
                          right: 4.0,
                          top: 2.0,
                          child: Stack(
                            children: <Widget>[
                              Icon(
                                Icons.brightness_1,
                                size: 08.0,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              _popupMenu(),
            ],
          ),
        ],
      ),
    );
  }
}
