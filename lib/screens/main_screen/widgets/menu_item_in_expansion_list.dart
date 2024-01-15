import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;
  const Menu({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            Container(width: 53),
            Expanded(
              child: ResponsiveTextStyle(
                  text: text.tr,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: color),
            ),
          ],
        ),
      ),
    );
  }
}
