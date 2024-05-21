import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/colors.dart';

class CustomOpeningClosingButton extends StatelessWidget {
  const CustomOpeningClosingButton(
      {super.key, required this.buttonName, required this.onPressed});

  final String buttonName;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return FilledButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(theme.isDarkMode
              ? AppColor.mainbackground
              : AppColor.selecteColor),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}
