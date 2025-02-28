import 'package:banking_app/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/app_style.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Card'),
        centerTitle: true,
        leading: IconButton.outlined(onPressed: (){
          }, icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const CreditCardBack(),
            const SizedBox(height: 20),
            const CreditCardWidget(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add),
                  Text(' Add new card',style: appStyle(16, Colors.black, FontWeight.bold),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreditCardBack extends StatelessWidget {
  const CreditCardBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.25,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(14),),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,left: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white.withOpacity(0.8),
                          ),
                          Transform.translate(
                            offset: const Offset(-10, 0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white.withOpacity(0.8),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,left: 20,
                      child: Text('4404 **** **** 1010',style: appStyle(20, Colors.white, FontWeight.w300),),
                    ),
                    Positioned(
                        top: 115,left: 20,
                        child: Text('2/25',style: appStyle(14, Colors.grey, FontWeight.w500),)),
                    Positioned(
                        top: 150,left: 20,
                        child: Text('Tufail Ahmed',style: appStyle(20, Colors.white, FontWeight.bold),)),
                    Positioned(
                        left: 222,
                        child: Image.asset('assets/card-design.png',fit: BoxFit.fill)
                    ),
                  ],
                ),
              )),
          ],
      ),
    );
  }
}
