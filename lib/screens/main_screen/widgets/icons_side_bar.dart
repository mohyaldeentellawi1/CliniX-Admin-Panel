import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../controllers/sidebar_controllers.dart';
import '../../../core/utils/colors.dart';

class IconsSideBar extends StatelessWidget {
  const IconsSideBar({super.key, required this.controller});
  final SideBarController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColor.backgorundDrawer,
            border: Border(right: BorderSide(color: AppColor.boxborder))),
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView(
              children: [
                Container(height: 25),
                ListTile(title: Image.asset(logo, width: 25, height: 25)),
                Container(height: 30),
                SideBarIconItem(
                  icon: calendar,
                  onTap: () {
                    controller.index.value = 0;
                    Get.back();
                  },
                  color: controller.index.value == 0
                      ? AppColor.selecteColor
                      : Colors.black,
                  selected: controller.index.value == 0,
                ),
                Container(height: 5),
                SideBarIconItem(
                    icon: account,
                    onTap: () {
                      controller.index.value = 1;
                      Get.back();
                    },
                    color: controller.index.value == 1
                        ? AppColor.selecteColor
                        : Colors.black,
                    selected: controller.index.value == 1),
                Container(height: 5),
                SideBarIconItem(
                    icon: profile,
                    onTap: () {
                      controller.index.value = 2;
                    },
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : Colors.black,
                    selected: controller.index.value == 2),
                Container(height: 5),
                SideBarIconItem(
                    color: controller.index.value == 16
                        ? AppColor.selecteColor
                        : Colors.black,
                    icon: treatment,
                    onTap: () {
                      controller.index.value = 16;
                      Get.back();
                    },
                    selected: controller.index.value == 11),
                Container(height: 5),
                SideBarIconItem(
                    icon: staff,
                    onTap: () {
                      controller.index.value = 17;
                      Get.back();
                    },
                    color: controller.index.value == 17
                        ? AppColor.selecteColor
                        : Colors.black,
                    selected: controller.index.value == 17),
                Container(height: 5),
                SideBarIconItem(
                    icon: faq,
                    onTap: () {
                      controller.index.value = 18;
                      Get.back();
                    },
                    color: controller.index.value == 18
                        ? AppColor.selecteColor
                        : Colors.black,
                    selected: controller.index.value == 18),
                Container(height: 5),
                SideBarIconItem(
                    icon: logout,
                    onTap: () {
                      controller.index.value = 19;
                      Get.back();
                    },
                    color: controller.index.value == 19
                        ? AppColor.selecteColor
                        : Colors.black,
                    selected: controller.index.value == 19),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SideBarIconItem extends StatelessWidget {
  const SideBarIconItem(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.selected,
      required this.color});

  final String icon;
  final void Function() onTap;
  final bool selected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon,
          height: 25,
          width: 25,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn)),
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