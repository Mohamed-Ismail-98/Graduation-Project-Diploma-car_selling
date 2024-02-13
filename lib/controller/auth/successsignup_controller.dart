import 'package:car_selling/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpdController extends GetxController{
  goToPageLogin();
}
class SuccessSignUpdControllerImp extends SuccessSignUpdController{
  @override
  goToPageLogin() {
    // TODO: implement goToPageLogin
    Get.offAllNamed(AppRoute.login);
  }

}
