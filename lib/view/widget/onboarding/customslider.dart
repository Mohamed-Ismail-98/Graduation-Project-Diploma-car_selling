import 'package:car_selling/controller/onboarding_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChange(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (BuildContext context, i)=> Column(
        children: [
        const SizedBox(height: 60,),
        Text(onBoardingList[i].title!,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: AppColor.black)) ,
        const SizedBox(height: 80,),
        Image.asset(onBoardingList[i].image!,height: Get.width / 1.3,fit: BoxFit.fill,),
        const SizedBox(height: 80,),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            child:
            Text(onBoardingList[i].body!,textAlign: TextAlign.center,
              style: const TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 15),
            )
          ),
        ],
      )
    );
  }
}
