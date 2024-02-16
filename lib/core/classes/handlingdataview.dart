import 'package:car_selling/core/classes/statusrequest.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  // استخدمنا هذه الصفحة عشان بدل ما اكتب كود if كل شوية استخدمة فقط احنا هنا استخدمنها مع صفحة test view هذه الصفحة تعتبر Function
  // هذا هو كود if الذي نقصدة // if(controller.statusRequest == StatusRequest.loading){
  //         //   return const Center(child: Text("Loading"));
  //         // }else if(controller.statusRequest == StatusRequest.offlinefailure){
  //         //   return const Center(child: Text("Offline Failure"));
  //         // }else if(controller.statusRequest == StatusRequest.serverfailure){
  //         //   return const Center(child: Text("Server Failure"));
  //         // }else if(controller.statusRequest == StatusRequest.failure){
  //         //   return const Center(child: Text("No Data", style: TextStyle(fontSize: 30),));
  //         // }else{
  //         //   return ListView.builder(
  //         //       itemCount: controller.data.length ,
  //         //       itemBuilder: (context , index){
  //         //         return Text("${controller.data}");
  //         //   });
  //         // }

  @override
  Widget build(BuildContext context) {
    return
    statusRequest == StatusRequest.loading ?
    const Center(child: Text("Loading")) :
    statusRequest == StatusRequest.offlinefailure ?
    const Center(child: Text("Offline Failure")) :
    statusRequest == StatusRequest.serverfailure ?
    const Center(child: Text("Server Failure")) :
    statusRequest == StatusRequest.failure ?
    const Center(child: Text("No Data", style: TextStyle(fontSize: 30),)) :
        widget;
  }
}
