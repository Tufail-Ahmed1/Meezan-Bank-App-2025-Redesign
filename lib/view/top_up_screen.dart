import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';


class TopUpScreen extends StatefulWidget {
  const TopUpScreen({super.key});

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  double amount=2500;
  String selectedProvider='Meezan Bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up',style: appStyle(20, Colors.black, FontWeight.bold),),
        centerTitle: true,
        leading: IconButton.outlined(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bank Transfer',style: appStyle(18, Colors.black, FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TopUpList(
                    title: 'Azhar Alee\n1234****10',subtitle: 'Meezan Bank',
                    image: 'https://crystalpng.com/wp-content/uploads/2025/01/meezan-bank-logo.png',
                    //icon: const Icon(Icons.account_balance,color: Colors.purple,),
                    isSelected: selectedProvider=='Meezan Bank',
                    onChanged: (value){
                      setState(() {
                        selectedProvider='Meezan Bank';
                      });
                    },

                  ),
                  Divider(color: Colors.grey.shade200,),
                  TopUpList(
                    title: 'Toufiq Ahmed\n41201****42',subtitle: 'Habib Bank',
                    image: 'https://www.hbl.com/assets/theme_images/whatsapp/logo_whatsapp.png?12345',
                    // icon: const Icon(Icons.account_balance,color: Colors.green,),
                    isSelected: selectedProvider=='Habib Bank',
                    onChanged: (value){
                      setState(() {
                        selectedProvider='Habib Bank';
                      });
                    },

                  ),
                  Divider(color: Colors.grey.shade200,),
                  TopUpList(
                    title: 'Tufail Ahmed\n034***28',subtitle: 'Nayapay Bank',
                    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvcFU8UAdlyU_ny9gtW1Ya98f8g1T0Rd4Seg&s',
                    //icon: const Icon(Icons.directions_transit_filled,color: Colors.orange,),
                    isSelected: selectedProvider=='Nayapay Bank',
                    onChanged: (value){
                      setState(() {
                        selectedProvider='Nayapay Bank';
                      });
                    },
                  ),
                  const SizedBox(height: 10,),

                ],
              ),
            ),
            Text('Other',style: appStyle(18, Colors.black, FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TopUpList(
                    title: 'Apple Pay',subtitle: 'Easy payment',
                    icon: const Icon(Icons.apple,color: Colors.black,),
                    isSelected: selectedProvider=='Apple pay',
                    onChanged: (value){
                      setState(() {
                        selectedProvider='Apple pay';
                      });
                    },

                  ),
                  Divider(color: Colors.grey.shade200,),
                  TopUpList(
                    title: 'Google Pay',subtitle: 'Easy payment',
                    icon: const Icon(Icons.ac_unit_rounded,color: Colors.purple,),
                    isSelected: selectedProvider=='Google Pay',
                    onChanged: (value){
                      setState(() {
                        selectedProvider='Google Pay';
                      });
                    },

                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: const WidgetStatePropertyAll(Colors.black),
                          fixedSize: const WidgetStatePropertyAll(Size(350, 50)),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: (){
                          showModalBottomSheet(
                           scrollControlDisabledMaxHeightRatio: 0.7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            context: context, builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TopUpList(
                                    title: 'Tufail Ahmed\n034***28',subtitle: 'Nayapay Bank',
                                    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvcFU8UAdlyU_ny9gtW1Ya98f8g1T0Rd4Seg&s',
                                    //icon: const Icon(Icons.directions_transit_filled,color: Colors.orange,),
                                    isSelected: selectedProvider=='Nayapay Bank',
                                    onChanged: (value){
                                      setState(() {
                                        selectedProvider='Nayapay Bank';
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 20),
                                  Text('Amount',style: appStyle(18, Colors.black, FontWeight.w500),),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.remove)),
                                      Text('Rs.${amount.toInt()}',style: appStyle(24, Colors.black, FontWeight.w500),),
                                      IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.teal,)),
                                    ],
                                  ),
                                  Slider(
                                     min: 100,max: 5000,
                                      value: amount,
                                      onChanged: (double value){
                                       setState(() {
                                         amount=value;
                                       });
                                      }
                                  ),
                                  Center(
                                    child: Wrap(
                                      runSpacing: 20,spacing: 20,
                                      children: [100,500,1000,1500,2000,3000,4000,5000].map((value){
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              amount=value.toDouble();
                                            });
                                          },
                                          borderRadius: BorderRadius.circular(10),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.16,height: MediaQuery.of(context).size.height*0.085,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: amount==value?Colors.teal:Colors.white,
                                            ),
                                            child: Text('Rs.${value.toString()}',style: appStyle(14, Colors.black, FontWeight.w500),),
                                          ),
                                        );
                                      }
                                      ).toList(),
                                    ),
                                  ),
                                  const SizedBox(height: 50),
                                  Center(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: const WidgetStatePropertyAll(Colors.black),
                                          fixedSize: const WidgetStatePropertyAll(Size(350, 50)),
                                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                        ),
                                        onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const TopUpScreen(),)),
                                        child: Text('Top up',style: appStyle(18, Colors.white, FontWeight.w500),)),
                                  ),
                                ],
                              ),
                            );
                          },);
                        },
                        child: Text('Confirm',style: appStyle(18, Colors.white, FontWeight.w500),)),
                  ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}

class TopUpList extends StatelessWidget {
  const TopUpList({
    super.key, required this.title, required this.subtitle,  this.icon, required this.isSelected, required this.onChanged, this.image,
  });
  final String title,subtitle;
  final Icon? icon;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;
  final String? image;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.106,
      width: MediaQuery.of(context).size.width*1,
      decoration:
      BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
        title: Text(title,style: appStyle(16, Colors.black, FontWeight.bold),),
        subtitle:Text(subtitle,style: appStyle(14, Colors.grey, FontWeight.w500),),
        trailing: Transform.scale(
          scale: 1.5,
          child: Radio.adaptive(
            value: true,
            groupValue: isSelected,
            onChanged: onChanged,
            activeColor: Colors.teal.shade800,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Colors.teal,
          ),
        ),
        leading: CircleAvatar(
          radius: 22,
          child: icon,
          backgroundImage: NetworkImage('$image'),
        ),
      ),
    );
  }
}
