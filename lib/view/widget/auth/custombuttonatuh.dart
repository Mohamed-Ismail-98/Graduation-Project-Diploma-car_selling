import 'package:car_selling/core/constant/color.dart';
import 'package:flutter/material.dart';
class CustomButtonAtuh extends StatelessWidget {
  final String text;
  final  void Function()? onPressed;

  const CustomButtonAtuh({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 11),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
