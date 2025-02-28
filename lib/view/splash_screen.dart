import 'dart:async';

import 'package:banking_app/view/login_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Opacity(
            opacity: 0.75,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*1,
              child: Image.network('https://image.ibb.co/fq63Ve/1cm.jpg',fit: BoxFit.cover,),
            ),
          ),
          Center(
            child: Positioned(
             // bottom: 240,left: 20,right: 20,
                child: Container(
              height:150,width: 300,
                  child: Image.asset('assets/meezan-bank-logo.png'),
                ),
            ),
          )
        ],
      ),
    );
  }
}
