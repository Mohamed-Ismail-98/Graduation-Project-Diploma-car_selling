import 'package:car_selling/core/constant/routes.dart';
import 'package:car_selling/core/services/services.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find() ;

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return const RouteSettings(name: AppRoute.login) ;
    }else if(myServices.sharedPreferences.getString("language") == "en"){
      return const RouteSettings(name: AppRoute.login) ;
    }
  }
}