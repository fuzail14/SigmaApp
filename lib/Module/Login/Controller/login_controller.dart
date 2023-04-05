import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LoginController extends GetxController
{

  bool isHidden = false;

TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void togglePasswordView() {
    isHidden = !isHidden;
    update();
  }

}