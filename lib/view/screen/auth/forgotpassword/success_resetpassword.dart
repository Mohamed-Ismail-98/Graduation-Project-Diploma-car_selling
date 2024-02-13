import 'package:car_selling/controller/auth/successresetpassword_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/view/widget/auth/custombuttonatuh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('37'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.all(17),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.check_circle_outline,size: 200,color: AppColor.primaryColor,)),
            Text("41".tr,style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColor.grey),),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAtuh(text: "39".tr,onPressed: (){
                 controller.goToPageLogin();
              },),
            ),
            SizedBox(height: 30,),
          ],),),
    );
  }
}

