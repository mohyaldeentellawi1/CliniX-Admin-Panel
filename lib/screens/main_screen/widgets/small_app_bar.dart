import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/dark_light_switch.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/localization_widget.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/notification_app_bar_button.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/profil_in_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class SmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SmallAppBar({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 1,
        backgroundColor: AppColor.mainbackground,
        toolbarHeight: 72,
        leadingWidth: width > 400
            ? 80
            : width > 280
                ? 0
                : 0,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            logo,
            fit: BoxFit.cover,
          ),
        ),
        title: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Builder(
                builder: (context) => IconButton(
                  hoverColor: AppColor.mainbackground,
                  highlightColor: AppColor.mainbackground,
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu, color: AppColor.black),
                ),
              ),
              const Spacer(),
              width > 600 ? const LocalizationWidget() : const SizedBox(),
              const SizedBox(width: 20),
              const SwitcLightDark(),
              NotificationButton(width: width),
              const SizedBox(width: 10),
              ProfileInAppBar(width: width),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
