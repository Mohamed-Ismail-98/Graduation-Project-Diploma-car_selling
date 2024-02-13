import 'package:car_selling/controller/auth/signup_controller.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/core/functions/alertexitapp.dart';
import 'package:car_selling/core/functions/validinput.dart';
import 'package:car_selling/view/widget/auth/custombuttonatuh.dart';
import 'package:car_selling/view/widget/auth/customtextbodyauth.dart';
import 'package:car_selling/view/widget/auth/customtextformauth.dart';
import 'package:car_selling/view/widget/auth/customtexttitleauth.dart';
import 'package:car_selling/view/widget/auth/logoauth.dart';
import 'package:car_selling/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(()=>SignUpControllerImp());   // و اعمل فيها نفس الجمله دي Binding و ممكن استبدل الجمله دي و اعمل صفحة اسمها  Signup دي عشان مش يحتفظ بالمعلومات اللي ضفتها في//
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('36'.tr,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body:WillPopScope(
    onWillPop: alertExitApp,
    child: GetBuilder<SignUpControllerImp>(
        builder: (controller)=>Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          key:controller.formstate ,
          child: ListView(children: [
            // const LogoAuth(),
            CustomTextTitleAtuh(text: "2".tr,),
            const SizedBox(height: 10,),
            CustomTextBodyAtuh(text:"10".tr),
            const SizedBox(height: 15,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 5, 100, "name");},hinttext: '8'.tr,iconData: Icons.person_outlined,labeltext: "31".tr, mycontroller: controller.name,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 10, 10, "email");},hinttext: '4'.tr,iconData: Icons.email_outlined,labeltext: "29".tr, mycontroller: controller.email,),
            CustomTextFormAtuh(isNumber: true,valid: (val){return validInput(val!, 11, 14, "phone");},hinttext: '9'.tr,iconData: Icons.phone_outlined,labeltext: "32".tr, mycontroller: controller.phone,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 5, 30, "password");},hinttext: '5'.tr,iconData: Icons.lock_outlined,labeltext: "30".tr, mycontroller: controller.password,),
            CustomButtonAtuh(text: "36".tr,onPressed: (){
              controller.signUp();
            },),
            const SizedBox(height: 40,),
            CustomTextSignUpOrSignIn(textone: "11".tr,texttwo: "12".tr,onTap: (){
              controller.goToSignIn();
            },),

          ],),
        ),
      )),
      )
    );
  }
}
