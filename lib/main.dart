import 'package:flutter/material.dart';
import 'package:nofapsigma/Module/Signup/View/signup.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:get/get.dart';

import 'Module/Login/View/login.dart';
import 'Module/HomeScreen/Controller/home_screen_controller.dart';
import 'Routes/route_managment.dart';
import 'Routes/screen_binding.dart';
import 'Routes/set_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: GenerateBill(),
      initialRoute: login,
      getPages: RouteManagement.getPages(),
      initialBinding: ScreenBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}
