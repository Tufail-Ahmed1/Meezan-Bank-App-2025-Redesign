import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';

class TransectionList extends StatelessWidget {
  const TransectionList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today, Feb 26',style: appStyle(16, Colors.black, FontWeight.w400)),
                  Row(
                    children: [
                      Text('All Transactions',style: appStyle(16, Colors.black, FontWeight.w400)),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage('https://www.hbl.com/assets/theme_images/whatsapp/logo_whatsapp.png?12345'),),
              title: Text('Toufiq Ahmed\n41201****42',style: appStyle(16, Colors.black, FontWeight.w500),),
              subtitle: const Text('Habib Bank'),
              trailing: Text('+Rs.1250',style: appStyle(16, Colors.green, FontWeight.bold),),
            ),
            Divider(color: Colors.grey.shade200,),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                radius: 22,
                backgroundImage: NetworkImage('https://www.thenews.com.pk/assets/uploads/akhbar/2024-01-27/1151682_8435733_Easypaisa_akhbar.jpg'),
                //child: Icon(Icons.send,color: Colors.red,),
              ),
              title: Text('Tufail Ahmed\n034****28',style: appStyle(16, Colors.black, FontWeight.w500),),
              subtitle: const Text('Easypaisa-Telenor Bank'),
              trailing: Text('-Rs.2550',style: appStyle(16, Colors.red, FontWeight.bold),),
            ),
            Divider(color: Colors.grey.shade200,),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                radius: 22,
                child: Icon(Icons.fitness_center),
              ),
              title: Text('Gym',style: appStyle(16, Colors.black, FontWeight.w500),),
              subtitle: const Text('Payment'),
              trailing: Text('-Rs.850',style: appStyle(16, Colors.red, FontWeight.bold),),

            ),
          ],
        )
    );
  }
}
