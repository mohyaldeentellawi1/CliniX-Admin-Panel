import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class NotificationCountIcon extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback? onTap;
  final int notificationCount;

  const NotificationCountIcon({
    Key? key,
    this.onTap,
    required this.text,
    required this.iconData,
    this.notificationCount = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 25,
              width: 18,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColor.notired,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: ResponsiveTextStyle(
                  text: '$notificationCount',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(iconData, color: AppColor.black),
            ],
          ),
        ],
      ),
    );
  }
}
