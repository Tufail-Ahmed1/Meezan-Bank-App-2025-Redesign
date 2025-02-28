import 'package:banking_app/widgets/action_buttons.dart';
import 'package:banking_app/widgets/app_style.dart';
import 'package:banking_app/widgets/credit_card_widget.dart';
import 'package:banking_app/widgets/transection_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height*1;
    return Scaffold(
      backgroundColor: Colors.purple.shade600,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Back!',style: appStyle(14, Colors.white, FontWeight.w400),),
                      Text('Tufail Ahmed',style: appStyle(25, Colors.white, FontWeight.w600),),
                    ],
                  ),
                  const Spacer(),
                  IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.notification_add,color: Colors.white,)),
                  IconButton.outlined(
                      color: Colors.deepPurple,
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.logout,color: Colors.white,)
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height:h*0.085,),
                        const ActionButtons(),
                        const TransectionList(),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 25,left: 25,right: 25,
                      child: CreditCardWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

