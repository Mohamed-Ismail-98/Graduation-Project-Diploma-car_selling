import 'package:car_selling/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}
class VerifyCodeControllerImp extends VerifyCodeController{

 late String verifyCode;

  @override
  checkCode() {
    // TODO: implement login

  }

  @override
  goToResetPassword() {
    // TODO: implement goToSignUp
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }



}