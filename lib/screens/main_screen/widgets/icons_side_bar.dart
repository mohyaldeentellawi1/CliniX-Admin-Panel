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
                Container(height: 20),
                Image.asset(
                  "assets/image/logo1.png",
                  fit: BoxFit.contain,
                  height: 25,
                  width: 25,
                ),
                Container(height: 30),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColor.darkblack.withOpacity(.10),
                        blurRadius: 3,
                        spreadRadius: .60,
                      )
                    ]),
                    child: SvgPicture.asset(
                      "assets/svg/dashboard/home_non.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  onTap: () {
                    // setState(() {
                    //   expandOrShrinkDrawer();
                    // });
                    // controller.index.value = 0;
                  },
                  selected: controller.index.value == 0,
                ),
                Container(height: 5),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColor.darkblack.withOpacity(.10),
                        blurRadius: 3,
                        spreadRadius: .60,
                      )
                    ]),
                    child: SvgPicture.asset(
                      "assets/svg/dashboard/grid_box.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  onTap: () {
                    // setState(() {
                    //   expandOrShrinkDrawer();
                    // });
                    // controller.index.value = 0;
                  },
                  selected: controller.index.value == 0,
                ),
                Container(height: 5),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColor.darkblack.withOpacity(.10),
                        blurRadius: 3,
                        spreadRadius: .60,
                      )
                    ]),
                    child: SvgPicture.asset(
                      "assets/svg/dashboard/auth_icon.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  onTap: () {
                    // setState(() {
                    //   expandOrShrinkDrawer();
                    // });
                    // controller.index.value = 0;
                  },
                  selected: controller.index.value == 0,
                ),
                Container(height: 5),
                ListTile(
                  // title: Text("Pages"),
                  leading: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColor.darkblack.withOpacity(.10),
                        blurRadius: 3,
                        spreadRadius: .60,
                      )
                    ]),
                    child: SvgPicture.asset(
                      "assets/svg/dashboard/file_icon.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  onTap: () {
                    // setState(() {
                    //   expandOrShrinkDrawer();
                    // });
                    // controller.index.value = 0;
                  },
                  selected: controller.index.value == 0,
                ),
                Container(height: 5),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColor.darkblack.withOpacity(.10),
                        blurRadius: 3,
                        spreadRadius: .60,
                      )
                    ]),
                    child: SvgPicture.asset(
                      "assets/svg/dashboard/form_icon.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  onTap: () {
                    // setState(() {
                    //   expandOrShrinkDrawer();
                    // });
                    // controller.index.value = 0;
                  },
                  selected: controller.index.value == 0,
                ),
                Container(height: 5),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: AppColor.darkblack.withOpacity(.10),
                        blurRadius: 3,
                        spreadRadius: .1,
                        offset: Offset.zero,
                      )
                    ]),
                    child: SvgPicture.asset(
                      "assets/svg/dashboard/table_icon.svg",
                      fit: BoxFit.contain,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  onTap: () {
                    // setState(() {
                    //   expandOrShrinkDrawer();
                    // });
                    // controller.index.value = 0;
                  },
                  selected: controller.index.value == 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
