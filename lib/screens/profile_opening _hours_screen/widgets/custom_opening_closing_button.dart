import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class CustomOpeningClosingButton extends StatelessWidget {
  const CustomOpeningClosingButton(
      {super.key, required this.buttonName, required this.onPressed});

  final String buttonName;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(AppColor.selecteColor),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}
