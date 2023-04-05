import 'package:get/get.dart';

import '../Module/HomeScreen/View/home_screen.dart';
import '../Module/Login/View/login.dart';
import '../Module/Signup/View/signup.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    //Get.lazyPut(() => SplashScreen());

    Get.lazyPut(() => Login());
    Get.lazyPut(() => Signup());

    Get.lazyPut(() => HomeScreen());
  }
}
