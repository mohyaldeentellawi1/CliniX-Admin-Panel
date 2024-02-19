// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/text_style.dart';

class ColumnTitel extends StatelessWidget {
  final String textL;
  final String texti;
  final String textii;
  const ColumnTitel({
    super.key,
    required this.textL,
    required this.texti,
    required this.textii,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: ResponsiveTextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              text: textL,
              color: themeProvider.isDarkMode
                  ? AppColor.mainbackground
                  : AppColor.black),
        ),
        Container(height: 5),
        Row(
          children: [
            ResponsiveTextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              text: texti,
              color: themeProvider.isDarkMode
                  ? AppColor.mainbackground
                  : AppColor.black,
            ),
            Container(width: 2),
            Icon(Icons.chevron_right),
            Container(width: 2),
            ResponsiveTextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              text: textii,
              color: themeProvider.isDarkMode
                  ? AppColor.mainbackground
                  : AppColor.black,
            ),
          ],
        ),
      ],
    );
  }
}

class RowTitel extends StatelessWidget {
  final String textL;
  final String texti;
  final String textii;
  const RowTitel({
    super.key,
    required this.textL,
    required this.texti,
    required this.textii,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        ResponsiveTextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          text: textL,
          color: themeProvider.isDarkMode
              ? AppColor.mainbackground
              : AppColor.black,
        ),
        Spacer(),
        ResponsiveTextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          text: texti,
          color: themeProvider.isDarkMode
              ? AppColor.mainbackground
              : AppColor.black,
        ),
        SizedBox(width: 10),
        Icon(Icons.chevron_right),
        SizedBox(width: 10),
        ResponsiveTextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          text: textii,
          color: themeProvider.isDarkMode
              ? AppColor.mainbackground
              : AppColor.black,
        )
      ],
    );
  }
}
