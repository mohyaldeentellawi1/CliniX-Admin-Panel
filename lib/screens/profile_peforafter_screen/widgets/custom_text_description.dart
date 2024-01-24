import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextDescription extends StatelessWidget {
  const CustomTextDescription(
      {super.key, required this.title, required this.desc});
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveTextStyle(
            color: AppColor.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            text: title),
        RichText(
          text: TextSpan(text: desc),
        ),
      ],
    );
  }
}
