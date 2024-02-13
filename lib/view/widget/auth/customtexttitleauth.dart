import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextTitleAtuh extends StatelessWidget {
  final String text;
  const CustomTextTitleAtuh({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text.tr,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline2,);
  }
}
