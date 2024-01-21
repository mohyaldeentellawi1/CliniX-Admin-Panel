import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomContainerButton extends StatefulWidget {
  const CustomContainerButton(
      {super.key,
      required this.onTap,
      required this.buttonName,
      this.margin,
      this.paddingWidth,
      this.paddingheight});

  final void Function() onTap;
  final String buttonName;
  final double? margin;
  final double? paddingWidth;
  final double? paddingheight;
  @override
  State<CustomContainerButton> createState() => _CustomContainerButtonState();
}

class _CustomContainerButtonState extends State<CustomContainerButton> {
  bool _isTouched = false;
  void _handleHover(bool isHovering) {
    setState(() {
      _isTouched = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: _handleHover,
      child: Container(
        margin: EdgeInsetsDirectional.only(start: widget.margin ?? 0.0),
        padding: EdgeInsetsDirectional.symmetric(
          vertical: widget.paddingheight ?? 0.0,
          horizontal: widget.paddingWidth ?? 5,
        ),
        decoration: BoxDecoration(
            color: _isTouched ? AppColor.selecteColor : Colors.transparent,
            border: Border.all(color: AppColor.borders)),
        child: Text(
          widget.buttonName,
          style: TextStyle(
              color: _isTouched ? AppColor.mainbackground : Colors.black),
        ),
      ),
    );
  }
}
