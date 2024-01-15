import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/colors.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onTap;
  final dynamic selected;
  final Color color;
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
      title: ResponsiveTextStyle(
        text: text,
        color: AppColor.darkblack,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      contentPadding: EdgeInsets.zero,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SvgPicture.asset(
          icon,
          height: 30,
          width: 30,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      ),
      onTap: onTap,
      selected: selected,
    );
  }
}
