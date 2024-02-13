import 'package:car_selling/controller/auth/forgotpassword_controller.dart';
import 'package:car_selling/controller/auth/verifycode_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/view/widget/auth/custombuttonatuh.dart';
import 'package:car_selling/view/widget/auth/customtextbodyauth.dart';
import 'package:car_selling/view/widget/auth/customtextformauth.dart';
import 'package:car_selling/view/widget/auth/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
     VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('40'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [
          // const LogoAuth(),
          CustomTextTitleAtuh(text: "14".tr,),
          const SizedBox(height: 10,),
          CustomTextBodyAtuh(text:"16".tr),
          const SizedBox(height: 15,),
          OtpTextField(
            fieldWidth: 60.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode){
              controller.goToResetPassword();
            }, // end onSubmit
          ),
          // CustomButtonAtuh(text: "Check",onPressed: (){},),
          const SizedBox(height: 40,),


        ],),
      ),

    );
  }
}
