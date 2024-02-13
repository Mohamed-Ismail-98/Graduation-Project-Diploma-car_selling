import 'package:car_selling/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
  }

}