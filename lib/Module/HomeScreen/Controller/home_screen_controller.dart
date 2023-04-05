import 'dart:async';

import 'package:get/get.dart';




class Controller extends GetxController{

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Timer.periodic(Duration(seconds: 1), (timer) {

      getTime();
    });




  }
  var days =0.obs;
  var hours = 0.obs;
  var minutes = 0.obs;
  var seconds =0.obs;




   getTime() async {



    DateTime startDate = DateTime.utc(2023, 04, 02, 12, 0, 0); // example start date
    DateTime endDate = DateTime.now(); // current date and time

    Duration duration = endDate.difference(startDate); // calculate the time difference

     days.value = duration.inDays;
     hours.value = (duration.inHours % 24) ;
     minutes.value= (duration.inMinutes % 60);
      seconds.value = (duration.inSeconds % 60) ;





  }


}