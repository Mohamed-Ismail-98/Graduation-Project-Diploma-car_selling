import 'package:car_selling/core/functions/checkinternet.dart';
import 'package:flutter/material.dart';
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  var res;
  initialdata() async{
    res= await checkInternet();
    print(res);
  }

  @override
  void initState() {
    // TODO: implement initState
    initialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test'),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          // OtpTextField(
          //   fieldWidth: 60.0,
          //   borderRadius: BorderRadius.circular(20),
          //   numberOfFields: 5,
          //   borderColor: Color(0xFF512DA8),
          //   //set to true to show as box or false to show as dash
          //   showFieldAsBox: true,
          //   //runs when a code is typed in
          //   onCodeChanged: (String code) {
          //     //handle validation or checks here
          //   },
          //   //runs when every textfield is filled
          //   onSubmit: (String verificationCode){
          //
          //   }, // end onSubmit
          // ),
        ],),
      ),
    );
  }
}
