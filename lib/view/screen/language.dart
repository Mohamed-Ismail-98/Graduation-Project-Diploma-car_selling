import 'dart:ffi';

import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/core/constant/routes.dart';
import 'package:car_selling/core/localization/changelocal.dart';
import 'package:car_selling/core/services/services.dart';
import 'package:car_selling/view/widget/language/custombuttonlang.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {

  const Language({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style: Theme.of(context).textTheme.headline1),
            const SizedBox(height: 20,),
            CustomButtonLang(textbutton: "Ar",onPressed: () {
              controller.changeLang("ar");

              Get.offAllNamed(AppRoute.onboarding);
            },),
            CustomButtonLang(textbutton: "En",onPressed: () {
              controller.changeLang("en");

              Get.offAllNamed(AppRoute.onboarding);
            },),
          ],
        ),
      ),
    );
  }
}
