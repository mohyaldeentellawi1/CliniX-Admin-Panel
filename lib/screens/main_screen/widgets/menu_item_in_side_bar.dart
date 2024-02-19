// ignore_for_file: must_be_immutable

import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/colors.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;
  final bool selected;

  final double minWidth;

  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.selected,
    required this.minWidth,
  });
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ListTile(
      selectedColor: themeProvider.isDarkMode
          ? AppColor.mainbackground
          : AppColor.selecteColor,
      title: ResponsiveTextStyle(
        text: text,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      contentPadding: EdgeInsets.zero,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SvgPicture.asset(
          icon,
          height: 30,
          width: 30,
          colorFilter: ColorFilter.mode(
              themeProvider.isDarkMode
                  ? AppColor.mainbackground
                  : AppColor.selecteColor,
              BlendMode.srcIn),
        ),
      ),
      onTap: onTap,
      selected: selected,
    );
  }
}
