import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

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
                  top: 16,left: 16,
                    child: Image.asset('assets/meezan-bank-logo.png',fit: BoxFit.fill,height: 40,),
                ),
                    Positioned(
                  top: 18,left: 70,
                  child: Image.asset('assets/credit-card-icon-png-4408.png',height: 30,color: Colors.white,),
                ),
                    Positioned(
                      top: 8,left: 195,
                      child: Row(
                        children: [
                          Text('Active Mode',style: appStyle(12, Colors.blueGrey, FontWeight.w600),),
                          const SizedBox(width: 5),
                          Switch(
                              value: true, onChanged: (value){}),
                        ],
                      )
                    ),
                    Positioned(
                      top: 90,left: 20,
                      child: Text('4404 **** **** 1010',style: appStyle(20, Colors.white, FontWeight.w300),),
                ),
              ],
            ),
          )),
         const SizedBox(height: 30),
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple.shade600,
                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(14),bottomLeft: Radius.circular(14))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs. 25,250.00',style: appStyle(22, Colors.white, FontWeight.bold),),
                      Row(
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
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
