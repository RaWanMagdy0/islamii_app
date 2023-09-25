import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'home_screen.dart';


class splash_screen extends StatefulWidget {
  static const String routeName='splash_screen';
  @override
  State<splash_screen> createState() => _splash_screenState();
}
class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), navigateloginpage );
  }
  void navigateloginpage(){
    Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_screen.png'),
              fit: BoxFit.contain,
            ),
          ),
        )

    );
  }
}