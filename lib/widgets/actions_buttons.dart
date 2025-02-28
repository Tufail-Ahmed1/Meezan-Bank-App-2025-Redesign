import 'package:flutter/material.dart';

import 'app_style.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({
    super.key,
    required this.label, required this.icon,
  });
  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.07,width: MediaQuery.of(context).size.width*0.18,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.purple),
          ),
          child: icon,
        ),
        const SizedBox(height: 10),
        Text(label,style: appStyle(11, Colors.black, FontWeight.w600),),
      ],
    );
  }
}
