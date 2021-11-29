import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screens/home_screen.dart';
import 'package:instagram/Screens/login_screen.dart';
import 'package:instagram/Screens/singup_screen.dart';

import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          tabBarTheme:  const TabBarTheme(
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle:
              TextStyle(fontSize: 16),
              labelStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Title',
                  fontWeight: FontWeight.w500),
              labelColor: Colors.black,
              indicator: UnderlineTabIndicator( // color for indicator (underline)
                  borderSide: BorderSide(color: Colors.black))),
      ),
      home:  LoginScreen(),
    );
  }
}
