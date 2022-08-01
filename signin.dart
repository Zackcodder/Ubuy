// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ubuy/Screens/home.dart';
import 'package:ubuy/Screens/signup.dart';
import 'package:ubuy/constants/color_constant.dart';
import 'package:ubuy/constants/text_style_constant.dart';
import 'package:ubuy/widgets/reuseable_text_field.dart';

class SignIn extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 84.0, left: 145.0, right: 145.64),
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 120.36,
                width: 57,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Welcome back, Sign in.',
            style: kBodytextstyle,
          ),
          Expanded(
            child: Form(
                key: _formKey,
                child: ListView(
                  children: [

                    //Request for Email Address
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, top: 40.0,),
                      child: Text(
                        textAlign: TextAlign.left,
                        'Email Address',
                        style: kTextboxlabelstyle,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 2.0, right: 20.0),
                      child: ReuseableTextField(
                        textcontroller: _emailTextController,
                        label: "Enter Your email Address",),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),

                    //Request for User Password
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0,),
                      child: Text(
                        textAlign: TextAlign.left,
                        'Password',
                        style: kTextboxlabelstyle,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 2.0, right: 20.0),
                      child: ReuseableTextField(
                        textcontroller: _passwordTextController,
                        label: "Enter Your Password",),
                    ),

                    //Forget Pasword Request
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, right: 20),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          textAlign: TextAlign.right,
                          'forgot password',
                          style: kForgetpasswordstyle,
                        ),
                      ),
                    ),

                    //Sing In Button
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 29.0, left: 20, right: 20),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: kHeight,
                        color: kInactiveColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: kButtontextstyle,
                        ),
                      ),
                    ),

                    // Google Sign In

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30.0, left: 20, right: 20),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: kSignupbuttonColor,
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: kHeight,
                        color: kBackground,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/google.png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 54.0,
                            ),
                            Text(
                              'Sign In with Google',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: kSignupbuttonColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Facebook SignIn

                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: kGeneraltextColor,
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: kHeight,
                        color: kBackground,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Facebook.png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(
                              width: 54.0,
                            ),
                            Text(
                              'Sign In with Facebook',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: kGeneraltextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Sign Up Redurection
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 33.0, top: 20, left: 94.0,),
                      child: Row(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Don't have an account? ",
                            style: kTextboxlabelstyle,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                            child: Text(
                              textAlign: TextAlign.right,
                              'Sign Up',
                              style: kForgetpasswordstyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
