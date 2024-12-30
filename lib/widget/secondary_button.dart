import 'package:flutter/material.dart';

import '../common/colors.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const SecondaryButton(
      {super.key,
        required this.title,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w600,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: TColor.secondarybutton,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              color: TColor.primaryText, fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );
  }
}