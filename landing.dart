// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:ubuy/constants/text_style_constant.dart';

// My Own Imports

import 'signin.dart';
import 'signup.dart';
import 'package:ubuy/constants/color_constant.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  final List<String> listImages = [
    'assets/images/pic_1.png',
    'assets/images/pic_2.png',
    'assets/images/pic_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: 431.0,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: CarouselImages(
                      borderRadius: 0.0,
                      viewportFraction: 0.9,
                      listImages: listImages,
                      height: 550.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          //Sign In Button
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: MaterialButton(
              color: kSignupbuttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              },
              minWidth: MediaQuery.of(context).size.width,
              child: const Text(
                "Log in",
                textAlign: TextAlign.center,
                style: kButtontextstyle,
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          // Sing Up Button
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  style: BorderStyle.solid,
                  color: kSignupbuttonColor,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              minWidth: MediaQuery.of(context).size.width,
              child: const Text(
                "Sign up for free",
                textAlign: TextAlign.center,
                style: kLandsignup,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
