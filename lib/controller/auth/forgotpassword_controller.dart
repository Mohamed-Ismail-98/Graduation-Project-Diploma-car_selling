import 'package:car_selling/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController{
  checkEmail();
  goToVerifyCode();
}
class ForgotPasswordControllerImp extends ForgotPasswordController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  checkEmail() {
    // TODO: implement login
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("Valid");
    }else{
      print("Not Valid");
    }

  }

  @override
  goToVerifyCode() {
    // TODO: implement goToSignUp
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email=TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    super.dispose();
  }

}