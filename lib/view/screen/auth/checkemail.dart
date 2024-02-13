import 'package:car_selling/controller/auth/checkemail_controller.dart';
import 'package:car_selling/controller/auth/forgotpassword_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/view/widget/auth/custombuttonatuh.dart';
import 'package:car_selling/view/widget/auth/customtextbodyauth.dart';
import 'package:car_selling/view/widget/auth/customtextformauth.dart';
import 'package:car_selling/view/widget/auth/customtexttitleauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    // CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('34'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [
          // const LogoAuth(),
          CustomTextTitleAtuh(text: "20".tr,),
          const SizedBox(height: 10,),
          CustomTextBodyAtuh(text:"15".tr),
          const SizedBox(height: 15,),
          // CustomTextFormAtuh(hinttext: '8'.tr,iconData: Icons.person_outlined,labeltext: "Name", mycontroller: controller.name,),

          // CustomTextFormAtuh(hinttext: '4'.tr,iconData: Icons.email_outlined,labeltext: "29".tr, mycontroller: controller.email,),

          // CustomTextFormAtuh(hinttext: '9'.tr,iconData: Icons.phone_outlined,labeltext: "Phone", mycontroller: controller.phone,),
          // CustomTextFormAtuh(hinttext: '5'.tr,iconData: Icons.lock_outlined,labeltext: "Password", mycontroller: controller.password,),
          // const Text("Forget Password",textAlign: TextAlign.end,),

          // CustomButtonAtuh(text: "35".tr,onPressed: (){
          //   controller.goToVerfiyCode();
          // },),
          const SizedBox(height: 40,),


        ],),
      ),

    );
  }
}
