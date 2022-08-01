// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ubuy/constants/color_constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateIndex(int index) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        body: Column(
          children: [
            // Infomation Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 20.0),
                  child: CircleAvatar(
                    child: Image.asset(
                      'assets/user.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38.0, left: 16.0),
                  child: Text(
                    'Hi John',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                  ),
                ),
                SizedBox(width: 130.0,),
                Padding(
                  padding: const EdgeInsets.only(top: 43.0,),
                  child: GestureDetector(
                    child: Icon(
                      Icons.search,
                      color: Color(0xff25282B),
                      weight: 30.0,
                      size: 30.0,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 42.0, left: 20.0,),
                  child: GestureDetector(
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Color(0xff25282B),
                    ),
                  ),
                ),
              ],
            ),

            // Advertisment section
            Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, bottom: 16.0, left: 20.0, right: 20.0),
              child: Image.asset('assets/promotion.png'),
            ),

            // User Activity result
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 15.0 ),
              child: Row(
               children: [
              Expanded(
                child: Image.asset(
                  'assets/ratings.png', height: kBoxheight, width: kBoxwidth,
                ),
              ),
              SizedBox(
                width: 10.5,
              ),
              Expanded(child: Image.asset( 'assets/coins.png', height: kBoxheight, width: kBoxwidth,)),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 15.0),
              child: Row(
               children: [
              Expanded(child: Image.asset('assets/bids.png', height: kBoxheight, width: kBoxwidth,)),
              SizedBox(
                width: 11.5,
              ),
              Expanded(child: Image.asset('assets/tasks.png', height: kBoxheight, width: kBoxwidth,)),
              ]),
            ),
            SizedBox(
            height: 5.0,
            ),
            
            // New Task Label
            Padding(
              padding: const EdgeInsets.only(right: 321.0),
              child: Text(
                textAlign: TextAlign.left,
                'New tasks',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: kGeneraltextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),

            // New Task Activities
            Expanded(
              child: SizedBox(
                height: 190,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, right: 17.0, left: 16.0,),
                      child: Container(
                        decoration: BoxDecoration(
                          
                        color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Web Development',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: kSignupbuttonColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'My Website Redesign and \n Redevelopment',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    )),
                              ],
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0,),
                              child: Column(
                                children: [
                                  Text(
                                    '13min ago',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6A609),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                    ),
                                    height: 18.0,
                                    width: 70,
                                    child: Text(
                                      'Open',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Color(0xffFFFFFF)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( bottom: 121,),
                              child: Icon(FontAwesomeIcons.sortDown),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, right: 17.0),
                      child: Container(
                        decoration: BoxDecoration(
                          
                        color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Web Development',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: kSignupbuttonColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text('My Website Redesign and \n Redevelopment',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: kSecndaryColor,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0,),
                              child: Column(
                                children: [
                                  Text(
                                    '13min ago',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: kSignupbuttonColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                    ),
                                    height: 18.0,
                                    width: 70,
                                    child: Text(
                                      'In Progress',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 121,),
                              child: Icon(FontAwesomeIcons.sortDown),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,
                          right: 17.0, left: 16.0,),
                      child: Container(
                        decoration: BoxDecoration(
                          
                        color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Web Development',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: kSignupbuttonColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('My Website Redesign and \n Redevelopment',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    )),
                              ],
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Column(
                                children: [
                                  Text(
                                    '13min ago',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffFB4E4E),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                    ),
                                    height: 18.0,
                                    width: 70,
                                    child: Text(
                                      'Cancelled',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Color(0xffFFFFFF), 
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 121),
                              child: Icon(FontAwesomeIcons.sortDown),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 17.0, left: 16.0,),
                      child: Container(
                        decoration: BoxDecoration(
                          
                        color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Web Development',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: kSignupbuttonColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('My Website Redesign and \n Redevelopment',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    )),
                              ],
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Column(
                                children: [
                                  Text(
                                    '13min ago',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6A609),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                    ),
                                    height: 18.0,
                                    width: 70,
                                    child: Text(
                                      'Open',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Color(0xffFFFFFF)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 121),
                              child: Icon(FontAwesomeIcons.sortDown),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 16.0, right: 17.0),
                      child: Container(
                        decoration: BoxDecoration(
                          
                        color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Web Development',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: kSignupbuttonColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text('My Website Redesign and \n Redevelopment',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: kSecndaryColor,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0,),
                              child: Column(
                                children: [
                                  Text(
                                    '13min ago',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: kSignupbuttonColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                    ),
                                    height: 18.0,
                                    width: 70,
                                    child: Text(
                                      'In Progress',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 121,),
                              child: Icon(FontAwesomeIcons.sortDown),
                            ),
                          ],
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 17.0, left: 16.0,),
                      child: Container(
                        decoration: BoxDecoration(
                          
                        color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Web Development',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: kSignupbuttonColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('My Website Redesign and \n Redevelopment',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    )),
                              ],
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Column(
                                children: [
                                  Text(
                                    '13min ago',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: kSecndaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6A609),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.0),
                                      ),
                                    ),
                                    height: 18.0,
                                    width: 70,
                                    child: Text(
                                      'Open',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Color(0xffFFFFFF)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 121),
                              child: Icon(FontAwesomeIcons.sortDown),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kBottombarColor,
          unselectedItemColor: kInactiveColor,

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.houseUser), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.briefcase), label: "Tasks"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.folder), label: "Bids"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.comment), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user), label: "Account"),
          ],
        ));
  }
}
