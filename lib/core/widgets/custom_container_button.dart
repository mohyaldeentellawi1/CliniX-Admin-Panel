import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton({
    super.key,
    required this.onTap,
    required this.buttonName,
  });

  final void Function() onTap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return FilledButton(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
              theme.isDarkMode ? AppColor.lightyellow : AppColor.selecteColor),
          foregroundColor: WidgetStatePropertyAll(
              theme.isDarkMode ? AppColor.black : AppColor.mainbackground)),
      onPressed: onTap,
      child: ResponsiveTextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        text: buttonName,
        textAlign: TextAlign.center,
      ),
    );
  }
}

/*
InkWell(
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
 */
