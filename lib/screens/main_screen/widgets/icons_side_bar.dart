import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/screens/login_screen/view/login_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../controllers/sidebar_controllers.dart';
import '../../../controllers/theme_controller.dart';
import '../../../core/utils/colors.dart';

class IconsSideBar extends StatelessWidget {
  const IconsSideBar({super.key, required this.controller});
  final SideBarController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              ListTile(title: Image.asset(logo1, width: 25, height: 25)),
              Container(height: 30),
              SideBarIconItem(
                icon: calendar,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              const SizedBox(height: 5),
              SideBarIconItem(
                  icon: account,
                  onTap: () {
                    controller.index.value = 1;
                    Get.back();
                  },
                  selected: controller.index.value == 1),
              const SizedBox(height: 5),
              SideBarIconItem(
                  icon: profile,
                  onTap: () {
                    controller.index.value = 2;
                  },
                  selected: controller.index.value == 2),
              const SizedBox(height: 5),
              SideBarIconItem(
                  icon: treatment,
                  onTap: () {
                    controller.index.value = 16;
                    Get.back();
                  },
                  selected: controller.index.value == 11),
              const SizedBox(height: 5),
              SideBarIconItem(
                  icon: staff,
                  onTap: () {
                    controller.index.value = 17;
                    Get.back();
                  },
                  selected: controller.index.value == 17),
              const SizedBox(height: 5),
              SideBarIconItem(
                  icon: faq,
                  onTap: () {
                    controller.index.value = 18;
                    Get.back();
                  },
                  selected: controller.index.value == 18),
              const SizedBox(height: 5),
              SideBarIconItem(
                  icon: logout,
                  onTap: () {
                    Get.offAll(const LoginScreenView(), fullscreenDialog: true);
                  },
                  selected: controller.index.value == 19),
            ],
          ),
        ),
      ),
    );
  }
}

class SideBarIconItem extends StatelessWidget {
  const SideBarIconItem({
    super.key,
    required this.icon,
    required this.onTap,
    required this.selected,
  });

  final String icon;
  final void Function() onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ListTile(
      leading: SvgPicture.asset(icon,
          height: 25,
          width: 25,
          colorFilter: ColorFilter.mode(
              themeProvider.isDarkMode
                  ? AppColor.mainbackground
                  : AppColor.selecteColor,
              BlendMode.srcIn)),
      onTap: onTap,
      selected: selected,
    );
  }
}

// setState(() {
//   expandOrShrinkDrawer();
// });
// controller.index.value = 0;

//controller.index.value == 0
