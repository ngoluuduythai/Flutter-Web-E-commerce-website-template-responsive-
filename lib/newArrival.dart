import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatefulWidget {
  NewArrival({Key? key}) : super(key: key);

  @override
  _NewArrivalState createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      margin: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          top: 0.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 0.0),
      child: GridView.count(
        crossAxisCount: extraLargeScreenGrid
            ? 5
            : largeScreenGrid
                ? 4
                : smallScreenGrid
                    ? 3
                    : tabScreenGrid
                        ? 2
                        : 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        crossAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/02/14/20/14/dress-1200115_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "SB CREATION Women's Knee Length Dress",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$400",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/10/30/18/35/shoes-1014606_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "FINE FASHION Comfortable Casual Flats Sandal",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$10",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/11/19/18/06/feet-1840619_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Nike Men Flex 2019 Rn Running Shoes",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$40",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/02/19/10/45/fashion-1209388_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Super stylist fashion jeans for women",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$14",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/11/21/11/29/close-up-1844786_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "New Ethical Fashion Women's Skater Knee Length Dress",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$19",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/11/29/13/39/analog-watch-1869928_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Decode Analogue Men's Watch Black Dial Black Colored",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$5",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2014/07/31/23/00/wristwatch-407096_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "PIRASO Analogue Classy Look Blue Dial Watch",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$7",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/03/26/09/40/suit-690048_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Peter England Men's Poly Viscose Notch Lapel Suit",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$9",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Arrow Sports Men's Blouson Cotton Sweater",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$4",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/08/05/09/55/mens-shoes-875950_960_720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "FENTACIA Men Casual Penny Loafers",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$4",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
