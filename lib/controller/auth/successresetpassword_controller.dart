import 'package:car_selling/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController{
  goToPageLogin();
}
class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goToPageLogin() {
    // TODO: implement goToPageLogin
    Get.offAllNamed(AppRoute.login);
  }

}
