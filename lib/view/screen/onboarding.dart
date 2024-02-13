import 'package:car_selling/controller/onboarding_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/view/widget/onboarding/custombutton.dart';
import 'package:car_selling/view/widget/onboarding/customslider.dart';
import 'package:car_selling/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
            flex: 1,
              child: Column(
                 children: [
                 CustomControllerOnBoarding(),
                 Spacer(flex: 2,),
                 CustomButtonOnBoarding(),
          ],))

        ],
      ),
      )
    );
  }
}
