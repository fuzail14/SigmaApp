import 'package:get/get.dart';
import 'package:nofapsigma/Module/Signup/View/signup.dart';
import 'package:nofapsigma/Routes/screen_binding.dart';
import 'package:nofapsigma/Routes/set_routes.dart';

import '../Module/HomeScreen/View/home_screen.dart';
import '../Module/Login/View/login.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      // GetPage(
      //     name: splashscreen,
      //     page: () => SplashScreen(),
      //     binding: ScreenBindings(),
      //     transition: Transition.noTransition),

      GetPage(
          name: login,
          page: () => Login(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: signup,
          page: () => Signup(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),

      GetPage(
          name: homescreen,
          page: () => HomeScreen(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
    ];
  }
}
