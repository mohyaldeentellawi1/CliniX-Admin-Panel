import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/screens/calender_screen/view/calendar.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/localization_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/theme_controller.dart';
import 'notification_app_bar_button.dart';
import 'profil_in_app_bar.dart';

class FullAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FullAppBar(
      {super.key,
      required this.width,
      required this.condition,
      required this.onTap,
      required this.onPressed,
      required this.value});
  final double width;
  final bool condition;
  final void Function() onTap;
  final void Function(bool) onPressed;
  final bool value;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AppBar(
      toolbarHeight: 72,
      leadingWidth: width > 400
          ? 80
          : width > 280
              ? 0
              : 0,
      leading: condition
          ? IconButton(onPressed: onTap, icon: const Icon(Icons.menu))
          : const SizedBox(),
      actions: [
        const LocalizationWidget(),
        const SizedBox(width: 10),
        CustomSvgItem(
          icon: themeProvider.isDarkMode ? darkmode : lightmode,
          width: 35,
          height: 35,
        ),
        Transform.scale(
            scale: 0.85,
            child: CupertinoSwitch(
                activeTrackColor: AppColor.lightgrey,
                inactiveTrackColor: AppColor.dark,
                value: value,
                onChanged: onPressed)),
        NotificationButton(width: width), // for notifications
        Container(width: 10),
        ProfileInAppBar(width: width),
        SizedBox(width: width > 1200 ? 35 : 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
