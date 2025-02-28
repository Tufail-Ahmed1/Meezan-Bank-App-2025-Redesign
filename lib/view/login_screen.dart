import 'package:banking_app/view/register_screen.dart';
import 'package:banking_app/widgets/app_style.dart';
import 'package:banking_app/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/actions_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height*1;
    final w=MediaQuery.of(context).size.width*1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                 height: h*0.18,width: w,
                 decoration: const BoxDecoration(
                   image: DecorationImage(image: AssetImage('assets/meezan-bank-logo.png')),
                 ),
               ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline_rounded),
                      label: Text('Username',style: appStyle(18, Colors.blueGrey, FontWeight.w500),),
                      border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.visibility_off),
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      label: Text('Password',style: appStyle(18, Colors.blueGrey, FontWeight.w500),),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                  ),
                ),
                const SizedBox(height: 30),
                Center(child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(Colors.purple),
                        fixedSize: const WidgetStatePropertyAll(Size(350, 50)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      ),
                      onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const BtmNavBar())),
                      child: Text('Login',style: appStyle(18, Colors.white, FontWeight.w500),)),),
                Padding(
                  padding: const EdgeInsets.only(left: 200,top: 10),
                  child: InkWell(child: Text('Forgot Password?',style: appStyle(14, Colors.purple.shade500, FontWeight.bold),)),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Container(
                        height: h*0.06,width: w*0.12,
                        decoration:BoxDecoration(
                          color: const Color(0xffe2e2e2),
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(image: AssetImage('assets/fingerprint.png'),fit: BoxFit.cover,opacity: 0.5,colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.luminosity)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text('Login with Fingerprint',style: appStyle(12, Colors.black, FontWeight.w500),),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionsButtons(
                        label: 'Branch Locations',icon: Icon(Icons.account_balance,size: 35,color: Colors.purple.shade600,),
                      ),
                      ActionsButtons(
                        label: 'Transfer rates',icon: Icon(Icons.cached_rounded,size: 35,color: Colors.purple.shade600),
                      ),
                      ActionsButtons(
                        label: 'Change Languages',icon: Icon(Icons.language_outlined,size: 35,color: Colors.purple.shade600),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Center(child: ElevatedButton(
                    style: ButtonStyle(
                      side: const WidgetStatePropertyAll(BorderSide(color: Colors.purple,strokeAlign: 4)),
                      backgroundColor: const WidgetStatePropertyAll(Colors.white),
                      fixedSize: const WidgetStatePropertyAll(Size(250, 40)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    ),
                    onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const RegisterScreen())),
                    child: Text('Create Account',style: appStyle(18, Colors.purple.shade600, FontWeight.w500),)),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
