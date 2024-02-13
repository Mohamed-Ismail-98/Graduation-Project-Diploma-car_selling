import 'package:car_selling/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();
}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

  late String verifyCode;

  @override
  checkCode() {
    // TODO: implement login

  }

  @override
  goToSuccessSignUp() {
    // TODO: implement goToSignUp
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }



}