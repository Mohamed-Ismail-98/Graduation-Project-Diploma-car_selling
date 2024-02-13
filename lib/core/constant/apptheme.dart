import 'package:car_selling/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headline1:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: AppColor.black),
    headline2:  TextStyle(fontWeight: FontWeight.bold,fontSize: 27, color: AppColor.black),

    bodyText1:  TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 15),
    bodyText2:  TextStyle(height: 2,color: AppColor.grey,fontSize: 14),
  ),
  primarySwatch: Colors.green,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headline1:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: AppColor.black),
    headline2:  TextStyle(fontWeight: FontWeight.bold,fontSize: 27, color: AppColor.black),

    bodyText1:  TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 15),
    bodyText2:  TextStyle(height: 2,color: AppColor.grey,fontSize: 14),
  ),
  primarySwatch: Colors.green,
);