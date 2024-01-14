import 'package:flutter/material.dart';

class SmallCustomTextButton extends StatefulWidget {
  const SmallCustomTextButton(
      {super.key, required this.icon, required this.onTap});

  final IconData icon;
  final void Function() onTap;

  @override
  State<SmallCustomTextButton> createState() => _SmallCustomTextButtonState();
}

class _SmallCustomTextButtonState extends State<SmallCustomTextButton> {
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
        child: Icon(
          widget.icon,
          color: _isHovered ? Colors.blue : Colors.black,
        ));
  }
}
