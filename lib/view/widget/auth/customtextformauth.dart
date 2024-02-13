import 'package:flutter/material.dart';

class CustomTextFormAtuh extends StatelessWidget {

  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAtuh({super.key, required this.hinttext, required this.labeltext, required this.iconData, required this.mycontroller, this.valid, required this.isNumber,  this.obscureText, this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text, // عشان احدد نوع الكيبورد اللي هيظهر في كل حقل
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText==null || obscureText == false ? false : true,
        decoration: InputDecoration(
        hintText: hinttext,
        hintStyle:const TextStyle(fontSize: 14),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
        suffixIcon:InkWell(child: Icon(iconData), onTap:onTapIcon ,) ,

      label: Container(
      margin: const EdgeInsets.symmetric(horizontal: 9),
      child: Text(labeltext,)
      ),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30)
      )
      ),
      ),
    );
  }
}
