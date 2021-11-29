import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/Screens/home_screen.dart';

class LoginController{
  TextEditingController createUserName = TextEditingController();
  TextEditingController createPassWord = TextEditingController();
  TextEditingController reTypePassword = TextEditingController();

  void validatePassword(){
    if(
    createPassWord==reTypePassword
    ){
      Get.offAll(const HomePage());
    }else{
      const Text('Password are not match');
    }
  }


}