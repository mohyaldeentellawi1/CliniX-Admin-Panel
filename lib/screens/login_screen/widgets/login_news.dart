import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/text_style.dart';

class LoginNews extends StatelessWidget {
  const LoginNews(
      {super.key, required this.name, required this.image, required this.text});
  final String name, image, text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(quote),
            const SizedBox(height: 15),
            ResponsiveTextStyle(
              text: text,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 48,
                  width: 48,
                ),
                const SizedBox(width: 20),
                ResponsiveTextStyle(
                  text: name,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ],
        ))
      ],
    );
  }
}
