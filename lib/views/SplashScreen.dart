import 'dart:async';

import 'package:femailauth/views/home.dart';
import 'package:femailauth/views/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();

  // choseScreen(context) {
  //   var userId = box.read("id");
  //   if (userId != null) {
  //     return Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (_) => const HomePage(),
  //       ),
  //     );
  //   } else {
  //     return Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (_) => SignUp(),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) {
          print(" id ${box.read("id")}");
          // return box.read("id") != null ? HomePage() :
          return SignUp();
        }),
      ),
    );
    return const Scaffold(
      body: Center(
        child: CircleAvatar(),
      ),
    );
  }
}
