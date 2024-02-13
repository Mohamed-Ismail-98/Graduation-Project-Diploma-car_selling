import 'package:car_selling/controller/auth/forgotpassword_controller.dart';
import 'package:car_selling/controller/auth/resetpassword_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/core/functions/validinput.dart';
import 'package:car_selling/view/widget/auth/custombuttonatuh.dart';
import 'package:car_selling/view/widget/auth/customtextbodyauth.dart';
import 'package:car_selling/view/widget/auth/customtextformauth.dart';
import 'package:car_selling/view/widget/auth/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
     ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('43'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          key:controller.formstate ,
          child: ListView(children: [
            // const LogoAuth(),
            CustomTextTitleAtuh(text: "17".tr,),
            const SizedBox(height: 10,),
            CustomTextBodyAtuh(text:"18".tr),
            const SizedBox(height: 15,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 3, 30, "password");},hinttext: '5'.tr,iconData: Icons.lock_outlined,labeltext: "30".tr, mycontroller: controller.password,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 3, 30, "password");},hinttext: '19'.tr,iconData: Icons.lock_outlined,labeltext: "30".tr, mycontroller: controller.password,),
            CustomButtonAtuh(text: "42".tr,onPressed: (){
              controller.goToSuccessResetPassword();
            },),
            const SizedBox(height: 40,),


          ],),
        ),
      ),

    );
  }
}
