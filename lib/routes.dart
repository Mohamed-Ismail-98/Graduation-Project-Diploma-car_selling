import 'package:car_selling/core/constant/routes.dart';
import 'package:car_selling/core/middleware/mymiddleware.dart';
import 'package:car_selling/view/screen/auth/forgotpassword/forgotpassword.dart';
import 'package:car_selling/view/screen/auth/forgotpassword/resetpassword.dart';
import 'package:car_selling/view/screen/auth/forgotpassword/success_resetpassword.dart';
import 'package:car_selling/view/screen/auth/forgotpassword/verifycode.dart';
import 'package:car_selling/view/screen/auth/login.dart';
import 'package:car_selling/view/screen/auth/signup.dart';
import 'package:car_selling/view/screen/auth/success_signup.dart';
import 'package:car_selling/view/screen/auth/verifycodesignup.dart';
import 'package:car_selling/view/screen/language.dart';
import 'package:car_selling/view/screen/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  // Auth
  GetPage(name: AppRoute.login, page: ()=> const Login()),
  GetPage(name: AppRoute.signUp, page: ()=> const SignUp()),
  GetPage(name: AppRoute.forgotPassword, page: ()=> const ForgotPassword()),
  GetPage(name: AppRoute.resetPassword, page: ()=> const ResetPassword()),
  GetPage(name: AppRoute.verifyCode, page: ()=> const VerifyCode()),
  GetPage(name: AppRoute.successSignUp, page: ()=> const SuccessSignUp()),
  GetPage(name: AppRoute.successResetPassword, page: ()=> const SuccessResetPassword()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: ()=> const VerifyCodeSignUp()),

  // Language
  GetPage(name: "/", page: () => const Language(), middlewares: [
    MyMiddleWare()
  ]),
  // OnBoarding
  GetPage(name: AppRoute.onboarding, page: ()=> const OnBoarding()),

];

