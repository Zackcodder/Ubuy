// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ubuy/Screens/signin.dart';
import 'package:ubuy/constants/color_constant.dart';
import 'package:ubuy/constants/text_style_constant.dart';
import 'package:ubuy/widgets/reuseable_text_field.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  State<SignUp> createState() => _SignUpState();

  bool Newagreement = false;

  String? selectedItem;

  final _formKey = GlobalKey<FormState>();

  TextEditingController _phonenumberTextController = TextEditingController();

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
            "Create an Account, it's free",
            style: kBodytextstyle,
          ),
          Expanded(
            child: SizedBox(
              child: Form(
                  key: _formKey,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      //Request User Phone Number
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40.0,
                          top: 40.0,
                        ),
                        child: Text(
                          textAlign: TextAlign.left,
                          'Phone Number',
                          style: kTextboxlabelstyle,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 2.0, right: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          controller: _phonenumberTextController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: kTextboxbackgroundColor,
                            hintText: 'Enter your Phone Number',
                            hintStyle: kTextboxhintstyle,
                            border: kBorderstyle,
                          ),
                        ),
                      ),

                      //Request for Email Address
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40.0,
                          top: 15.0,
                        ),
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
                          label: 'Enter Your Email Adress',
                        ),
                      ),

                      //Request for User Password
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          left: 40.0,
                        ),
                        child: Text(
                          textAlign: TextAlign.left,
                          'Password',
                          style: kTextboxlabelstyle,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 2.0, bottom: 15.0, right: 20.0),
                        child: ReuseableTextField(
                          textcontroller: _passwordTextController,
                          label: 'Enter Your Password',
                          // suffixIcon: kIcons,
                        ),
                      ),

                      // Agreement Checker
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Newagreement = !Newagreement;
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.only(left: 28, right: 24),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 24,
                                    child: Checkbox(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        value: Newagreement,
                                        onChanged: (val) {
                                          setState(() {
                                            Newagreement = val ?? false;
                                          });
                                        }),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    textAlign: TextAlign.left,
                                    'I agree to the ',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: kGeneraltextColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.right,
                                    'terms & conditions',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: kSignupbuttonColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    ' and',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: kGeneraltextColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.right,
                                    ' privacy policy',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: kSignupbuttonColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      //Create account Button
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 31.0, left: 20, right: 20),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: kHeight,
                          color: kSignupbuttonColor,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignIn(),
                              ),
                            );
                          },
                          child: Text(
                            'Create account',
                            textAlign: TextAlign.center,
                            style: kButtontextstyle,
                          ),
                        ),
                      ),

                      // Google Sign In
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, left: 20, right: 20),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: kMediatext1Color,
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
                                'Continue with Google',
                                textAlign: TextAlign.center,
                                style: kMediastyle1,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Facebook SignIn
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, left: 20, right: 20),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: kMediatext2Color,
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
                                'Continue with Facebook',
                                textAlign: TextAlign.center,
                                style: kMediastyle2,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Sign In Redurection
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 45,
                          top: 25,
                          left: 93.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              textAlign: TextAlign.right,
                              "Alread have an account? ",
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
                                        builder: (context) => SignIn()));
                              },
                              child: Text(
                                textAlign: TextAlign.right,
                                'Log In',
                                style: kForgetpasswordstyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

