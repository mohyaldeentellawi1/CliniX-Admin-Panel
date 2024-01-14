import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton(
      {super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final void Function() onTap;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isHovered = false;

  void _handleHover(bool isHovering) {
    setState(() {
      _isHovered = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: _handleHover,
        onTap: widget.onTap,
        child: Text(
          widget.buttonName,
          textAlign: TextAlign.center,
          style: TextStyle(color: _isHovered ? Colors.blue : Colors.black),
        ));
  }
}
