import 'package:car_selling/core/constant/routes.dart';
import 'package:car_selling/core/services/services.dart';
import 'package:car_selling/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController{

  late PageController pageController;

  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    // TODO: implement next
    currentPage++;
    if(currentPage>onBoardingList.length-1){
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);
    }else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    // TODO: implement onPageChange
    currentPage=index;
    update();

  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }

}