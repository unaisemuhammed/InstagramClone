import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                width: screenWidth,
                top: screenHeight / 6,
                child: Image.asset(
                  'assets/images/5772032.png',
                  scale: 7,
                ),
              ),
              Positioned(
                width: screenWidth,
                bottom: screenHeight / 18,
                child: Center(
                  child: Image.asset(
                    'assets/images/4320x1080sr.png',
                    scale: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>  LoginScreen(),
      ),
    );
  }
}
