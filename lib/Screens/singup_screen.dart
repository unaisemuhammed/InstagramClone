import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:instagram/Screens/create_username_screen.dart';

import 'login_screen.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SingleChildScrollView(
            // reverse: true,
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: Column(
                children: <Widget>[
                  // construct the profile details widget here
                  Center(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: screenWidth,
                      height: screenHeight / 3,
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/circleavatar.png',
                        scale: 3.5,
                      ),
                    ),
                  ),

                  // the tab bar with two items
                  Container(
                    height: 50,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      bottom: const TabBar(
                        tabs: [
                          Tab(
                            child: Text(
                              'PHONE NUMBER',
                            ),
                          ),
                          Tab(
                            child: Text(
                              'EMAIL ADDRESS',
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: .0,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                child: TextFormField(
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  decoration: InputDecoration(
                                    prefixIcon: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'IN+91',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    hintText: "Phone number",
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    fillColor: const Color(0xFFebebeb),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'You may receive SMS updates from Instagram and can opt out at any time',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(screenWidth, 50)),
                                onPressed: () {
                                  Get.off(CreateUser());
                                },
                                child: const Text('Next'),
                              ),
                            ],
                          ),
                        ),

                        /// second tab bar view widget
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                child: TextFormField(
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  decoration: InputDecoration(
                                    hintText: "Email address",
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                    fillColor: const Color(0xFFebebeb),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(screenWidth, 50)),
                                onPressed: () {
                                  Get.off(CreateUser());
                                },
                                child: const Text('Next'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 25),
                    height: screenHeight / 10,
                    width: screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.off(LoginScreen());
                          },
                          child: const Text(
                            'Sign in.',
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
