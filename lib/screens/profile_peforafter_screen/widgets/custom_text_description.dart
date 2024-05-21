import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/theme_controller.dart';

class CustomTextDescription extends StatelessWidget {
  const CustomTextDescription(
      {super.key, required this.title, required this.desc});
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveTextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, text: title),
        RichText(
          text: TextSpan(
              text: desc,
              style: TextStyle(
                  color: themeProvider.isDarkMode
                      ? AppColor.lightyellow
                      : AppColor.selecteColor)),
        ),
      ],
    );
  }
}
