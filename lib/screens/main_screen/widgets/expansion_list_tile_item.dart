import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/sidebar_controllers.dart';
import '../../../core/utils/colors.dart';

class ExpansionListCustom extends StatefulWidget {
  final String title;
  final String? icon;
  final dynamic selected;
  final dynamic color;
  final dynamic children;
  const ExpansionListCustom({
    super.key,
    required this.title,
    this.selected,
    this.color,
    this.children,
    this.icon,
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
      //  data:
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
                    "assets/svg/dashboard/down_arrow.svg",
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
          // collapsedIconColor: AppColor.black,
          textColor: AppColor.searchbackground,
          iconColor: AppColor.searchbackground,
          tilePadding: EdgeInsets.zero,
          title: Text(
            widget.title.tr,
            style: const TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
          ),
          children: widget.children,
          leading: widget.icon != null && widget.icon!.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 0.0),
                  child: SvgPicture.asset(
                    widget.icon!,
                    fit: BoxFit.cover,
                    height: 17,
                    width: 22,
                    color: _isExpanded ? AppColor.searchbackground : null,
                  ),
                )
              : Container(width: 0.0),
        ),
      ),
    );
  }
}
