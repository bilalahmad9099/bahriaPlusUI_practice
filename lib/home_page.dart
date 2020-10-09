import 'package:bahriaplus_mainpage/set_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    //backgroundColor : backgroundColor;
    //final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    //MediaQueryData mediaQueryData = MediaQuery.of(context);
    //mediaQueryData.size.width;
    //mediaQueryData.size.height;
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.blue,
                    size: 23,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Bahria Plus',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.add_to_photos,
                    color: Colors.blue,
                    size: 23,
                  )
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(60)),
      body: body(context),
    );

  }
}

Widget body(context) {
  //double cardMargin;
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20, top: 16),
            child: Text(
              'Find the Top Real Estate Properties & Agencies\n'
              'in your desired area.Search by name of agency\n'
              '\t\t\t or browse our featured agencies below.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, left: 16, bottom: 2),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Agency',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              top: 6, left: 4, right: 4, bottom: 6),
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Container(
                              height: 22,
                              width: 22,
                              child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.search, size: 22),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.lightBlueAccent.withOpacity(0.2),
                  offset: Offset(0, 50),
                  spreadRadius: 2,
                  blurRadius: 100,
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 7),
            child: Container(
              child: Text(
                'Titanium Agencies',
                style: TextStyle(
                    fontSize: 23.5,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff4288FD)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 9,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              height: 178,
              child: ListView(
                controller: PageController(viewportFraction: 0.7),
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    image_1: Image.asset(
                      'assets/1914.png',
                      width: 120,
                      height: 100,
                    ),
                    firstText: 'Real Estate Agency',
                  ),
                  CategoryCard(
                    image_1: Image.asset(
                      'assets/1914.png',
                      width: 120,
                      height: 100,
                    ),
                    firstText: 'Real Estate Agency',
                  ),
                  CategoryCard(
                    image_1: Image.asset(
                      'assets/image_2.png',
                      width: 120,
                      height: 100,
                    ),
                    firstText: 'Real Estate Agency',
                  ),
                  CategoryCard(
                    image_1: Image.asset(
                      'assets/image_3.png',
                      width: 120,
                      height: 100,
                    ),
                    firstText: 'Real Estate Agency',
                  ),
                  CategoryCard(
                    image_1: Image.asset(
                      'assets/image_5.png',
                      width: 120,
                      height: 100,
                    ),
                    firstText: 'Real Estate Agency',
                  ),
                  CategoryCard(
                    image_1: Image.asset(
                      'assets/image_3.png',
                      width: 120,
                      height: 100,
                    ),
                    firstText: 'Real Estate Agency',
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 155,
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Color(0xff0fdc5d),
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    splashColor: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Find Top Properties",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    splashColor: Colors.black,
                    onPressed: () {},
                    child: Text(
                      "Post Ad",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Top Cities',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Row(
                children: [
                  Card(
                    margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 7,
                          ),
                          child: CircleAvatar(
                            radius: 21,
                            backgroundImage: AssetImage('assets/Lpng.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Lahore',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 7),
                          child: CircleAvatar(
                            radius: 21,
                            backgroundImage: AssetImage('assets/Kpng.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Karachi',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 7),
                          child: CircleAvatar(
                            radius: 21,
                            backgroundImage: AssetImage('assets/ipng.png'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Islamabad',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
