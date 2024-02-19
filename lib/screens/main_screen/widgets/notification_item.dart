import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class NotifcationItem extends StatelessWidget {
  final dynamic icon;
  final String name;
  final String message;
  final String time;

  final Color backgroundColor;

  const NotifcationItem({
    super.key,
    required this.icon,
    required this.name,
    required this.message,
    required this.time,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          maxRadius: 15,
          backgroundColor: backgroundColor,
          child: Icon(icon, size: 15, color: AppColor.mainbackground),
        ),
        Container(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveTextStyle(
              text: name,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            Container(height: 5),
            SizedBox(
              width: width < 325 ? 190 : 230,
              child: Row(
                children: [
                  Expanded(
                    child: ResponsiveTextStyle(
                      text: message,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.watch_later_outlined, size: 15),
                Container(width: 4),
                ResponsiveTextStyle(
                  text: time,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
