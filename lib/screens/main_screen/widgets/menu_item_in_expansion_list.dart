import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;
  final bool selected;
  const Menu({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SizedBox(),
      onTap: onTap,
      selectedColor: AppColor.selecteColor,
      dense: true,
      selected: selected,
      contentPadding: EdgeInsetsDirectional.zero,
      title: ResponsiveTextStyle(
          text: text.tr,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: color),
    );
  }
}
