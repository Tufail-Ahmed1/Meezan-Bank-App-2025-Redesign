import 'package:banking_app/view/register_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/app_style.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height*1;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: h,
            child: Image.asset('assets/img.png',fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 60,left: 10,right: 10,
              child: Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Colors.black),
                      fixedSize: const WidgetStatePropertyAll(Size(350, 50)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    ),
                    onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const RegisterScreen())),
                    child: Text('Register Now',style: appStyle(18, Colors.white, FontWeight.w500),)),
              ),
          ),
          Positioned(
              bottom: 20,left: 50,
              child: Text('Already have an account? Login Here',style: appStyle(16, Colors.white, FontWeight.w500),))
        ],
      ),
    );
  }
}
