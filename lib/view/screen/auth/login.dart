import 'package:car_selling/controller/auth/login_controller.dart';
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
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Sign In',style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          key:controller.formstate ,
          child: ListView(children: [
            const LogoAuth(),
            CustomTextTitleAtuh(text: "2".tr,),
            const SizedBox(height: 10,),
            CustomTextBodyAtuh(text:"3".tr),
            const SizedBox(height: 15,),
            CustomTextFormAtuh(isNumber: false,valid: (val){return validInput(val!, 5, 100, "email");},hinttext: '4'.tr,iconData: Icons.email_outlined,labeltext: "29".tr, mycontroller: controller.email,),
            GetBuilder<LoginControllerImp>(builder: (controller)=>CustomTextFormAtuh(obscureText: controller.isshowpassword,onTapIcon: (){controller.showPassword();},isNumber: false,valid: (val){return validInput(val!, 5, 30, "password");},hinttext: '5'.tr,iconData: Icons.lock_outlined,labeltext: "30".tr, mycontroller: controller.password,),),
            InkWell(
                onTap: (){
                  controller.goToForgotPassword();
                },
                child:  Text("28".tr,textAlign: TextAlign.end,)
            ),
            CustomButtonAtuh(text: "33".tr,onPressed: (){
              controller.login();
            },),
            const SizedBox(height: 40,),
            CustomTextSignUpOrSignIn(textone: "6".tr,texttwo: "7".tr,onTap: (){
              controller.goToSignUp();
            },),

          ],),
        ),
      ), ),

    );
  }
}
