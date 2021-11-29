import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screens/singup_screen.dart';
import 'package:instagram/controller/login_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController loginScreenController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              Positioned(
                width: screenWidth,
                top: screenHeight / 6,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/2560px-Instagram_logo.svg.png',
                        scale: 15,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: loginScreenController.createUserName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Phone number,email address or username',
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: loginScreenController.createPassWord,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          hintText: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: const Center(
                            child: Text(
                              'Log In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          width: screenWidth,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Forgotten your login details?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Get help with logging in.',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'OR',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                width: screenWidth,
                bottom: screenHeight / 20 - 30,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 25),
                  height: screenHeight / 10,
                  width: screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(const SingUpScreen());
                        },
                        child: const Text(
                          'Sign up.',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  // decoration: const BoxDecoration(
                  //   border: Border(
                  //     bottom: BorderSide(
                  //       color: Colors.grey,
                  //       width: .0,
                  //     ),
                  //   ),
                  // ),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: .0))),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
