import 'package:car_selling/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
  goToForgotPassword();
}
class LoginControllerImp extends LoginController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword=true;

  showPassword(){
    isshowpassword= isshowpassword == true ? false : true;
    update();
  }


  @override
  login() {
    // TODO: implement login
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("Valid");
    }else{
      print("Not Valid");
    }

  }

  @override
  goToSignUp() {
    // TODO: implement goToSignUp
    Get.offNamed(AppRoute.signUp);
  }

  @override
  goToForgotPassword() {
    // TODO: implement ForgotPassword
    Get.toNamed(AppRoute.forgotPassword);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    super.dispose();
  }



}