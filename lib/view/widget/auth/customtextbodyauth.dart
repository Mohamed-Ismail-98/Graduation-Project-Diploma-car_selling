import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextBodyAtuh extends StatelessWidget {
  final String text;
  const CustomTextBodyAtuh({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Text(text.tr,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText2,),
    );
  }
}
