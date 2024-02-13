import 'package:car_selling/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessResetPassword();
}
class ResetPasswordControllerImp extends ResetPasswordController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetPassword() {
    // TODO: implement login
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print("Valid");
    }else{
      print("Not Valid");
    }

  }

  @override
  goToSuccessResetPassword() {
    // TODO: implement goToSignUp
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    password=TextEditingController();
    repassword=TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

}