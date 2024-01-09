import 'package:clinix_admin_panel/controllers/sidebar_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/colors.dart';
import 'expansion_list_tile_item.dart';
import 'menu_item_in_expansion_list.dart';
import 'menu_item_in_side_bar.dart';

class MainSideBar extends StatelessWidget {
  const MainSideBar({super.key, required this.controller});
  final SideBarController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColor.backgorundDrawer,
            border: Border(
              right: BorderSide(color: AppColor.boxborder),
            )),
        // color: Color.fromARGB(255, 224, 209, 249),
        child: Obx(
          () => ListView(
            physics: const ScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/image/logo1.png",
                      fit: BoxFit.cover,
                      height: 30,
                      width: 30,
                    ),
                    Container(width: 10),
                    const Text(
                      "Clinicx",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          // expandOrShrinkDrawer();
                        },
                        child: const Icon(Icons.menu)),
                  ],
                ),
              ),
              Container(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              MenuItem(
                minWidth: 40,
                text: "Calender",
                icon: "assets/svg/dashboard/home_non.svg",
                color:
                    controller.index.value == 0 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              MenuItem(
                minWidth: 40,
                text: "Account",
                icon: "assets/svg/dashboard/home_non.svg",
                color:
                    controller.index.value == 0 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              ExpansionListCustom(
                title: "Profile",
                icon: "assets/svg/dashboard/grid_box.svg",
                color:
                    controller.index.value == 1 ? AppColor.selecteColor : null,
                children: [
                  Menu(
                    text: 'Clinic Information',
                    color: controller.index.value == 1
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 1;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Clinic Description',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Add Video',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Pictures',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Currency',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Opening Hour',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Clinic Service',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                  Menu(
                    text: 'Payment information',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // controller.index.value = 2;
                      // Get.back();
                    },
                  ),
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Treatments",
                icon: "assets/svg/dashboard/home_non.svg",
                color:
                    controller.index.value == 0 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              MenuItem(
                minWidth: 40,
                text: "Staff",
                icon: "assets/svg/dashboard/home_non.svg",
                color:
                    controller.index.value == 0 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              ExpansionListCustom(
                title: "Reviews",
                icon: "assets/svg/dashboard/file_icon.svg",
                color: AppColor.selecteColor,
                children: [
                  Menu(
                    text: "Overview",
                    color: controller.index.value == 13
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 13;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: "Invite patients to leave a review",
                    color: controller.index.value == 50
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      // Get.to(Maintenance());
                    },
                  ),
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Service Score",
                icon: "assets/svg/dashboard/home_non.svg",
                color:
                    controller.index.value == 0 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              MenuItem(
                minWidth: 40,
                text: "LogOut",
                icon: "assets/svg/dashboard/home_non.svg",
                color:
                    controller.index.value == 0 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  height: 276,
                  decoration: BoxDecoration(
                    color: AppColor.selecteColor.withOpacity(.10),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/image/logo1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
