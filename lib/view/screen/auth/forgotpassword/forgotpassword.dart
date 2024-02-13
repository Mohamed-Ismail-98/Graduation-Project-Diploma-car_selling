import 'package:car_selling/controller/auth/forgotpassword_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/core/functions/validinput.dart';
import 'package:car_selling/view/widget/auth/custombuttonatuh.dart';
import 'package:car_selling/view/widget/auth/customtextbodyauth.dart';
import 'package:car_selling/view/widget/auth/customtextformauth.dart';
import 'package:car_selling/view/widget/auth/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImp controller = Get.put(ForgotPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('28'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          key:controller.formstate ,
          child: ListView(children: [
            // const LogoAuth(),
            CustomTextTitleAtuh(text: "13".tr,),
            const SizedBox(height: 10,),
            CustomTextBodyAtuh(text:"15".tr),
            const SizedBox(height: 15,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 5, 100, "email");},hinttext: '4'.tr,iconData: Icons.email_outlined,labeltext: "29".tr, mycontroller: controller.email,),
            CustomButtonAtuh(text: "35".tr,onPressed: (){
              controller.goToVerifyCode();
            },),
            const SizedBox(height: 40,),


          ],),
        ),
      ),

    );
  }
}
