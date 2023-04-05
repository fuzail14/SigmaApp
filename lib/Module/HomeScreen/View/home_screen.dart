import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:percent_indicator/percent_indicator.dart';

import '../Controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Obx(() {
                  return CircularPercentIndicator(
                    radius: 90.0,
                    animation: true,
                    lineWidth: 5.0,
                    animationDuration: 300,
                    percent: double.parse(
                        ((controller.seconds.value / 60)).toString()),
                    center: Text("dk"),
                    progressColor: Colors.black,
                    fillColor: Colors.white,
                  );
                }),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    const Text("DAYS"),
                    Obx(() {
                      return Text(controller.days.value.toString());
                    }),
                    const Text("HRS"),
                    Obx(() {
                      return Text(controller.hours.value.toString());
                    }),
                    const Text("MINS"),
                    Obx(() {
                      return Text(controller.minutes.value.toString());
                    }),
                    const Text("SEC"),
                    Obx(() {
                      return Text(controller.seconds.toString());
                    })
                  ],
                ),
              ],
            )));
  }
}
