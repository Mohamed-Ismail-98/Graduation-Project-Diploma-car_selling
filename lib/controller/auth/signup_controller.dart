import 'package:car_selling/core/classes/statusrequest.dart';
import 'package:car_selling/core/constant/routes.dart';
import 'package:car_selling/core/functions/handlingdatacontroller.dart';
import 'package:car_selling/data/datasource/remote/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();
}
class SignUpControllerImp extends SignUpController{
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  late StatusRequest statusRequest;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  signUp() async {
    // TODO: implement login


    if(formstate.currentState!.validate()){

      statusRequest = StatusRequest.loading;
      var response = await signupData.postData(name.text, password.text, email.text, phone.text);
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest){
        if(response['status'] == "success"){
          data.addAll(response['data']);
          Get.offNamed(AppRoute.verifyCodeSignUp);
        }else{
          Get.defaultDialog(title: "Warning",middleText:"Phone Number Or Email Already Exists", );
          statusRequest= StatusRequest.failure;  // failure = no data
        }
      }
      update();

      // Get.offNamed(AppRoute.verifyCodeSignUp);
      //Get.delete<SignUpControllerImp>(); lazyPut اكتب  put  و اكتب بدل  Ui  و ممكن استبدل الجمله دي و اروح علي صفحة   Signup دي عشان مش يحتفظ بالمعلومات اللي ضفتها في
    }else{
      print("Not Valid");
    }


  }

  @override
  goToSignIn() {
    // TODO: implement goToSignUp
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    name=TextEditingController();
    email=TextEditingController();
    phone=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

}