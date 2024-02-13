import 'package:car_selling/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'onboarding.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const Language(),));
    });
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(colors: [Colors.green,Colors.lime],
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/splash.png',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,),
            // Icon(Icons.edit,size: 80,color: Colors.white,),
            // SizedBox(height: 20),
            // Text('CAR SELLING',
            // style: TextStyle(
            //   fontStyle: FontStyle.italic,
            //   color: Colors.white,
            //   fontSize: 32,
            // ),
            // ),
          ],
        ),
      ),

    );
  }
}
