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
      // width: 250,
      width: 70,
      child: Container(
        // color: Color(0xFFFBFAFF),
        decoration: const BoxDecoration(
            color: AppColor.backgorundDrawer,
            border: Border(right: BorderSide(color: AppColor.boxborder))),
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView(
              children: [
                Container(height: 20),
                SvgPicture.asset(
                  "assets/svg/minia_logo.svg",
                  fit: BoxFit.contain,
                  height: 25,
                  width: 25,
                ),
                Container(height: 30),
                ListTile(
                  // title: Text("home"),
                  leading: Container(
                    decoration: BoxDecoration(
                        // color: AppColor.darkGreen,
                        boxShadow: [
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
                  // title: Text("Apps"),
                  leading: Container(
                    decoration: BoxDecoration(
                        // color: AppColor.darkGreen,
                        boxShadow: [
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
                  // title: Text("Auth"),
                  leading: Container(
                    decoration: BoxDecoration(
                        // color: AppColor.darkGreen,
                        boxShadow: [
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
                    decoration: BoxDecoration(
                        // color: AppColor.darkGreen,
                        boxShadow: [
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
                  // title: Text("Forms"),
                  leading: Container(
                    decoration: BoxDecoration(
                        // color: AppColor.darkGreen,
                        boxShadow: [
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
                  // title: Text("Tables"),
                  leading: Container(
                    decoration: BoxDecoration(
                        // color: AppColor.darkGreen,
                        boxShadow: [
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
