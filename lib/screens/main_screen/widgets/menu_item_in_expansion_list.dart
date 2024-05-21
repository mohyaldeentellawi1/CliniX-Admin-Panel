import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Menu extends StatelessWidget {
  final String text;

  final VoidCallback onTap;
  final bool selected;
  const Menu({
    super.key,
    required this.text,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ListTile(
      selectedColor: themeProvider.isDarkMode
          ? AppColor.mainbackground
          : AppColor.selecteColor,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10),
        child: CircleAvatar(
          backgroundColor: themeProvider.isDarkMode
              ? AppColor.mainbackground
              : AppColor.dark,
          radius: 5,
        ),
      ),
      onTap: onTap,
      dense: true,
      selected: selected,
      contentPadding: EdgeInsetsDirectional.zero,
      title: ResponsiveTextStyle(
        text: text,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: themeProvider.isDarkMode
            ? AppColor.mainbackground
            : AppColor.selecteColor,
      ),
    );
  }
}
