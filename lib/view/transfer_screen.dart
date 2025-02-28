import 'package:banking_app/view/my_card_screen.dart';
import 'package:banking_app/view/top_up_screen.dart';
import 'package:banking_app/widgets/app_style.dart';
import 'package:banking_app/widgets/credit_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height*1;
    final w=MediaQuery.of(context).size.width*1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer',style: appStyle(20, Colors.black, FontWeight.w500),),
        centerTitle: true,
        leading: IconButton.outlined(onPressed: ()=>Navigator.pop(context), icon:const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text('Choose Card',style: appStyle(18, Colors.black, FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(2, (index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: h*0.25,width: w*0.90,
                          child: const CreditCardWidget(),
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          height: h*0.25,width: w*0.90,
                          child: const CreditCardBack(),
                        ),
                      ],
                    ),
                  );
                },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Choose recipients',style: appStyle(18, Colors.black, FontWeight.bold)),
            const SizedBox(height: 10,),
            CupertinoSearchTextField(
              placeholderStyle: const TextStyle(height: 1.5,color: Colors.blueGrey),
              placeholder: 'Search contacts...',
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h*0.2,width: w*0.32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: index==0?Colors.teal:Colors.grey,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          index==0? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.check,color: Colors.teal),
                            ],
                          ),
                        ): const SizedBox(height: 16),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png'),
                          ),
                          Text('Tufail',style: appStyle(16, Colors.black, FontWeight.w500),),
                          Text('Ahmed',style: appStyle(16, Colors.black, FontWeight.w500),),
                        ],
                      ),
                    ),
                  );
                },),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.black),
                  fixedSize: const WidgetStatePropertyAll(Size(350, 50)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                  onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const TopUpScreen(),)),
                  child: Text('Continue',style: appStyle(18, Colors.white, FontWeight.w500),)),
            ),
          ],
        ),
      ),
    );
  }
}
