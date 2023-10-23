import 'dart:async';

import 'package:flutter/material.dart';
import 'package:key2rights/Login.dart';
import 'package:key2rights/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 2),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => LoginPage()  
            )  
         )  
    );  
  }  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/image/13.jpg",
                  height: 300.0,
                  width: 400.0,
                ),
              ],
            ),
          ],
      ),
    ),
   );
  }
}