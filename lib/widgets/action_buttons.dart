import 'package:banking_app/view/top_up_screen.dart';
import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionsButtons(
            icon: Icon(Icons.swap_horizontal_circle_outlined,size: 30,color: Colors.purple.shade600,),
            label: 'Transfer\n Money',
            onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const TopUpScreen(),)); },
          ),
          ActionsButtons(
            icon: Icon(Icons.account_balance_wallet_rounded,size: 30,color: Colors.purple.shade600,),
            label: '  Bills &\n Top-ups',
            onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const TopUpScreen(),));},
          ),
          ActionsButtons(
            icon: Icon(Icons.account_balance,size: 30,color: Colors.purple.shade600,),
            label: '  RAAST\nPayments',
            onPressed: (){},
          ),
          ActionsButtons(
            icon: Icon(Icons.grid_view_rounded,size: 30,color: Colors.purple.shade600,),
            label: 'More',
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({
    super.key, required this.label, required this.icon, required this.onPressed,
  });
  final String label;
  final Icon icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior:HitTestBehavior.deferToChild,
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height*0.1,width: MediaQuery.of(context).size.width*0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.purple,strokeAlign: 0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 3,),
            Text(label,style: appStyle(12, Colors.purple, FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}

