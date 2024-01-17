import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton({
    super.key,
    required this.onTap,
    required this.onHover,
    required this.isTouched,
    required this.buttonName,
  });

  final void Function() onTap;
  final void Function(bool) onHover;
  final bool isTouched;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: isTouched ? AppColor.selecteColor : Colors.transparent,
            border: Border.all(color: AppColor.borders)),
        child: Text(
          buttonName,
          style: TextStyle(
              color: isTouched ? AppColor.mainbackground : Colors.black),
        ),
      ),
    );
  }
}
