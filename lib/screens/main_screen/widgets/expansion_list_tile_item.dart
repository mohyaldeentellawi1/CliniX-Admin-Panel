import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../controllers/theme_controller.dart';
import '../../../core/utils/colors.dart';

class ExpansionListCustom extends StatelessWidget {
  final String title;
  final String? icon;
  final String icoN;
  final bool selected;

  final List<Widget> children;

  final void Function(bool) onExpansionChanged;
  const ExpansionListCustom(
      {super.key,
      required this.title,
      required this.selected,
      required this.children,
      this.icon,
      required this.icoN,
      required this.onExpansionChanged});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ListTileTheme(
      dense: true,
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
            onExpansionChanged: onExpansionChanged,
            trailing: selected
                ? Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: SvgPicture.asset(
                      dynamicArrow,
                      height: 8,
                      width: 8,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          themeProvider.isDarkMode
                              ? AppColor.mainbackground
                              : AppColor.selecteColor,
                          BlendMode.srcIn),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: themeProvider.isDarkMode
                          ? AppColor.mainbackground
                          : AppColor.selecteColor,
                      size: 12,
                    ),
                  ),
            tilePadding: EdgeInsets.zero,
            title: ResponsiveTextStyle(
              color: themeProvider.isDarkMode
                  ? AppColor.mainbackground
                  : AppColor.selecteColor,
              text: title,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 0.0),
              child: SvgPicture.asset(
                icoN,
                width: 30,
                height: 30,
                colorFilter: ColorFilter.mode(
                    themeProvider.isDarkMode
                        ? AppColor.mainbackground
                        : AppColor.selecteColor,
                    BlendMode.srcIn),
              ),
            ),
            children: children),
      ),
    );
  }
}
