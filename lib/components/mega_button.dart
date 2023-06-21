import 'package:flutter/material.dart';

class MegaButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final void ontap;
  const MegaButton(
      {super.key,
      required this.title,
      required this.color,
      required this.ontap,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
