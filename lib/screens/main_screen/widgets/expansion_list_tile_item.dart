import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/sidebar_controllers.dart';
import '../../../core/utils/colors.dart';

class ExpansionListCustom extends StatefulWidget {
  final String title;
  final String? icon;
  final String icoN;
  final dynamic selected;
  final Color color;
  final dynamic children;
  const ExpansionListCustom({
    super.key,
    required this.title,
    this.selected,
    required this.color,
    this.children,
    this.icon,
    required this.icoN,
  });

  @override
  State<ExpansionListCustom> createState() => _ExpansionListCustomState();
}

class _ExpansionListCustomState extends State<ExpansionListCustom> {
  SideBarController controller = Get.find();

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      dense: true,
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
            onExpansionChanged: (bool isExpanded) {
              setState(() {
                _isExpanded = isExpanded;
              });
            },
            trailing: _isExpanded
                ? Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: SvgPicture.asset(
                      dynamicArrow,
                      height: 8,
                      width: 8,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.notselecteColor,
                      size: 12,
                    ),
                  ),
            tilePadding: EdgeInsets.zero,
            title: ResponsiveTextStyle(
              text: widget.title.tr,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: widget.color,
            ),
            children: widget.children,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 0.0),
              child: SvgPicture.asset(
                widget.icoN,
                width: 30,
                height: 30,
              ),
            )),
      ),
    );
  }
}
