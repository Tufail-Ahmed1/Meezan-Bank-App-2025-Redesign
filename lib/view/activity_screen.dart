import 'package:banking_app/widgets/app_style.dart';
import 'package:banking_app/widgets/time_option_buttons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity',style: appStyle(20, Colors.black, FontWeight.bold),),
        centerTitle: true,
        leading: IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.more_horiz)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.09,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      color: index%2==0?Colors.purple.shade600:Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Smartpay Cards',style: appStyle(16, Colors.white, FontWeight.w500),),
                          const SizedBox(width: 40),
                          Text('**** 4404',style: appStyle(16, Colors.white, FontWeight.w500),),
                          const Spacer(),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white.withOpacity(0.8),
                              ),
                              Transform.translate(
                                offset: const Offset(-10, 0),
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.white.withOpacity(0.8),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height*0.45,
              width: MediaQuery.of(context).size.width*0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text('Total Spending',style: appStyle(15, Colors.grey, FontWeight.bold),),
                    const SizedBox(height: 10),
                    Text('Rs. 6543.00',style: appStyle(30, Colors.black, FontWeight.bold),),
                    const TimeOptionRow(),
                    const SizedBox(height: 16),
                    Expanded(
                      child: LineChart(
                          LineChartData(
                              gridData: const FlGridData(show: false),
                              titlesData: FlTitlesData(
                                leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value,meta){
                                    const tiles=['S','M','T','W','T','F','S'];
                                    final index=value.toInt();
                                    if(index>=0 && index< tiles.length)
                                    { return Text(tiles[index],style: appStyle(14, Colors.grey, FontWeight.w500),);}
                                    return const Text('');
                                    },
                                  reservedSize: 22, interval: 1,
                                )),
                                rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false),

                                ),
                                topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false),
                                ),
                              ),
                            borderData: FlBorderData(show: false),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  const FlSpot(0, 2),
                                  const FlSpot(1, 1),
                                  const FlSpot(2, 4),
                                  const FlSpot(3, 4),
                                  const FlSpot(4, 3),
                                  const FlSpot(5, 4),
                                  const FlSpot(6, 6),
                                ],
                                isCurved: true,
                                color: Colors.purple.shade600,
                                barWidth: 3,
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: Colors.purple.shade600.withOpacity(0.6),
                                )
                              )
                            ]
                          ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Transections',style: appStyle(18, Colors.black, FontWeight.bold),),
                  const Spacer(),
                  Text('All',style: appStyle(18, Colors.black, FontWeight.bold),),
                  const Icon(Icons.expand_more),
                ],
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              controller: ScrollController(),
              children: [
                ListTile(
                  title: Text('Tufail Ahmed\n034****28',style: appStyle(18, Colors.black, FontWeight.w500),),
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 239, 243, 245),
                    radius: 20,
                   backgroundImage: NetworkImage('https://www.thenews.com.pk/assets/uploads/akhbar/2024-01-27/1151682_8435733_Easypaisa_akhbar.jpg'),
                   // child: Icon(Icons.payments_rounded),
                  ),
                  subtitle: Text('Easypaisa-Telenor Bank',style: appStyle(16, Colors.grey, FontWeight.w500),),
                  trailing: Text('-Rs.1500',style: appStyle(16, Colors.black, FontWeight.bold),),
                ),
                ListTile(
                  title: Text('Daraz',style: appStyle(18, Colors.black, FontWeight.w500),),
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 239, 243, 245),
                    radius: 20,
                    child: Icon(Icons.send,color: Colors.red,),
                  ),
                  subtitle: Text('Payment',style: appStyle(16, Colors.grey, FontWeight.w500),),
                  trailing: Text('-Rs.2500',style: appStyle(16, Colors.black, FontWeight.bold),),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
