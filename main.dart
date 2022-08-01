import 'package:flutter/material.dart';
import 'package:ubuy/Screens/landing.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    title: 'UBuy',
    debugShowCheckedModeBanner: false,
    // ignore: prefer_const_constructors
    home: LandingPage(),
  ));
}
