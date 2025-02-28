import 'package:banking_app/widgets/app_style.dart';
import 'package:flutter/material.dart';

class TimeOptionButtons extends StatelessWidget {
  const TimeOptionButtons({super.key, required this.label, required this.onTap, required this.isSelected});
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected?Colors.teal.withOpacity(0.06):Colors.transparent,
        ),
        child: Text(label,style: appStyle(14, Colors.black, FontWeight.bold),),
      ),
    );
  }
}

class TimeOptionRow extends StatefulWidget {
  const TimeOptionRow({super.key});

  @override
  State<TimeOptionRow> createState() => _TimeOptionRowState();
}

class _TimeOptionRowState extends State<TimeOptionRow> {
  String selectedPeriod='week';

  final List<String> periods=['Day','Week','Month','Year'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: periods.map((periods) {
        return TimeOptionButtons(
            label: periods,
            isSelected: selectedPeriod==periods,
          onTap: () => setState(() => selectedPeriod==periods));
        },).toList(),
    );
  }
}

