import 'package:car_selling/core/classes/crud.dart';
import 'package:car_selling/core/classes/statusrequest.dart';
import 'package:car_selling/core/functions/handlingdatacontroller.dart';
import 'package:car_selling/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController{
  // Crud crud = Crud();  GetX ممكن نستخدم دي لو مش هنستخدم ال
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData()async{
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      data.addAll(response['data']);
    }
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

}