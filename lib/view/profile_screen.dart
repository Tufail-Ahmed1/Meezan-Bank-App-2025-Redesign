import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height*1;
    final w=MediaQuery.of(context).size.width*1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: appStyle(22, Colors.black, FontWeight.w500),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/IMG-20240906-WA0039.jpg'),
                  ),
                ),
                Positioned(
                    left: 220,top: 100,bottom: 1,
                    child: Container(
                      height: h*0.060,width: w*0.12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.purple),
                      ),
                      child: const Icon(Icons.edit_outlined,size: 30,),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: h*0.45,width: w,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.purple),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Personal Info',style: appStyleWitHt(20, 1, Colors.black, FontWeight.w700),),
                        const Spacer(),
                        Text('Edit',style: appStyleWitHt(20, 1, Colors.black, FontWeight.w500),)
                      ],
                    ),
                    ListTile(
                      title: Text('Name',style: appStyle(16,Colors.blueGrey, FontWeight.w500),),
                      subtitle: Text('Tufail Ahmed',style: appStyleWitHt(18, 1, Colors.black, FontWeight.w500),),
                      leading: const Icon(Icons.perm_identity_rounded,size: 28,),
                    ),
                    ListTile(
                      title: Text('E-mail',style: appStyle(16,Colors.blueGrey, FontWeight.w500),),
                      subtitle: Text('tufail@gmail.com',style: appStyleWitHt(18, 1, Colors.black, FontWeight.w500),),
                      leading: const Icon(Icons.email_outlined,size: 28,),
                    ),
                    ListTile(
                      title: Text('Phone number',style: appStyle(16,Colors.blueGrey, FontWeight.w500),),
                      subtitle: Text('03123456789',style: appStyleWitHt(18, 1, Colors.black, FontWeight.w500),),
                      leading: const Icon(Icons.phone_outlined,size: 27,),
                    ),
                    ListTile(
                      title: Text('Address',style: appStyle(16,Colors.blueGrey, FontWeight.w500),),
                      subtitle: Text('Dha Phase 2, Karachi',style: appStyleWitHt(17, 1, Colors.black, FontWeight.w500),),
                      leading: const Icon(Icons.home_outlined,size: 30,),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: h*0.3,width: w,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.purple),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Account Info',style: appStyleWitHt(20, 1, Colors.black, FontWeight.w700),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
