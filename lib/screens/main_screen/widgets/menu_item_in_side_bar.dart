import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/colors.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final dynamic selected;
  final dynamic color;
  final double minWidth;

  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.selected,
    required this.color,
    required this.minWidth,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      selectedColor: AppColor.selecteColor,
      title: Text(
        text.tr,
        style: const TextStyle(
            overflow: TextOverflow.clip,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5),
      ),
      contentPadding: EdgeInsets.zero,
      leading: Padding(
          padding: const EdgeInsets.only(left: 20.0), child: Icon(icon)),
      onTap: onTap,
      selected: selected,
    );
  }
}
