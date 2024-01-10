import 'package:flutter/material.dart';

class CustomDialogButton extends StatelessWidget {
  const CustomDialogButton(
      {super.key,
      required this.width,
      required this.onPressed,
      required this.shadowColor,
      required this.backgroundColor,
      required this.buttonName,
      required this.textColor});
  final double width;
  final void Function() onPressed;
  final Color shadowColor;
  final Color backgroundColor;
  final String buttonName;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: width < 365 ? 40 : 95,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shadowColor: shadowColor,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
            backgroundColor: backgroundColor),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 13,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
