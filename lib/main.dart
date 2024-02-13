import 'package:car_selling/binding.dart';
import 'package:car_selling/binding/initialbinding.dart';
import 'package:car_selling/core/constant/color.dart';
import 'package:car_selling/core/localization/changelocal.dart';
import 'package:car_selling/core/localization/translation.dart';
import 'package:car_selling/core/services/services.dart';
import 'package:car_selling/routes.dart';
import 'package:car_selling/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialSerices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller=Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Car Store',
      locale: controller.language,
      theme: controller.appTheme,
      // home: const SplashScreen(),
      initialBinding: InitialBindings(),
      // routes: routes,
      getPages: routes,
    );
  }
}


