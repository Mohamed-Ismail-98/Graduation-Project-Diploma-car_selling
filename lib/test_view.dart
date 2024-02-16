import 'package:car_selling/controller/test_controller.dart';
import 'package:car_selling/core/classes/handlingdataview.dart';
import 'package:car_selling/core/classes/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: const Text("Title"),),
      body: GetBuilder<TestController>(builder: (controller){


        return HandlingDataView(statusRequest: controller.statusRequest, widget:ListView.builder(
            itemCount: controller.data.length ,
            itemBuilder: (context , index){
              return Text("${controller.data}");
            }),);


        // if(controller.statusRequest == StatusRequest.loading){
        //   return const Center(child: Text("Loading"));
        // }else if(controller.statusRequest == StatusRequest.offlinefailure){
        //   return const Center(child: Text("Offline Failure"));
        // }else if(controller.statusRequest == StatusRequest.serverfailure){
        //   return const Center(child: Text("Server Failure"));
        // }else if(controller.statusRequest == StatusRequest.failure){
        //   return const Center(child: Text("No Data", style: TextStyle(fontSize: 30),));
        // }else{
        //   return ListView.builder(
        //       itemCount: controller.data.length ,
        //       itemBuilder: (context , index){
        //         return Text("${controller.data}");
        //   });
        // }
      }),
    );
  }
}
