import 'package:clinix_admin_panel/core/utils/constant.dart';

import 'package:clinix_admin_panel/screens/main_screen/widgets/localization_widget.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/notification_app_bar_button.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/profil_in_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class SmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SmallAppBar(
      {super.key,
      required this.width,
      required this.onPressed,
      required this.value});
  final double width;
  final void Function(bool) onPressed;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 72,
      leadingWidth: width > 400
          ? 80
          : width > 280
              ? 0
              : 0,
      leading: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(
          logo1,
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
                icon: const Icon(Icons.menu),
              ),
            ),
            const Spacer(),
            width > 600 ? const LocalizationWidget() : const SizedBox(),
            Transform.scale(
                scale: 0.85,
                child: Switch.adaptive(
                    activeColor: AppColor.selecteColor,
                    inactiveTrackColor: AppColor.darkyellow,
                    value: value,
                    onChanged: onPressed)),
            const SizedBox(width: 20),
            NotificationButton(width: width),
            const SizedBox(width: 10),
            ProfileInAppBar(width: width),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
