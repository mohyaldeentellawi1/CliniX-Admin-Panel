import 'package:clinix_admin_panel/controllers/sidebar_controllers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../core/utils/colors.dart';
import 'expansion_list_tile_item.dart';
import 'menu_item_in_expansion_list.dart';
import 'menu_item_in_side_bar.dart';

class MainSideBar extends StatelessWidget {
  const MainSideBar({super.key, required this.controller, required this.onTap});
  final SideBarController controller;
  final void Function() onTap;
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
                          onTap();
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
                icon: FontAwesomeIcons.calendar,
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
                icon: FontAwesomeIcons.person,
                color:
                    controller.index.value == 1 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 1;
                  Get.back();
                },
                selected: controller.index.value == 1,
              ),
              ExpansionListCustom(
                title: "Profile",
                icoN: FontAwesomeIcons.addressCard,
                color:
                    controller.index.value == 2 ? AppColor.selecteColor : null,
                children: [
                  Menu(
                    text: 'Clinic Information',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 2;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Clinic Description',
                    color: controller.index.value == 3
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 3;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Add Video',
                    color: controller.index.value == 4
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 4;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Pictures',
                    color: controller.index.value == 5
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 5;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Currency',
                    color: controller.index.value == 6
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 6;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Opening Hour',
                    color: controller.index.value == 7
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 7;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Clinic Service',
                    color: controller.index.value == 8
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 8;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Payment information',
                    color: controller.index.value == 9
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 9;
                      Get.back();
                    },
                  ),
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Treatments",
                icon: FontAwesomeIcons.staffSnake,
                color:
                    controller.index.value == 10 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 10;
                  Get.back();
                },
                selected: controller.index.value == 10,
              ),
              MenuItem(
                minWidth: 40,
                text: "Staff",
                icon: FontAwesomeIcons.staffSnake,
                color:
                    controller.index.value == 11 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 11;
                  Get.back();
                },
                selected: controller.index.value == 11,
              ),
              ExpansionListCustom(
                title: "Reviews",
                icoN: FontAwesomeIcons.star,
                color: AppColor.selecteColor,
                children: [
                  Menu(
                    text: "Overview",
                    color: controller.index.value == 12
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 12;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: "Invite patients to leave a review",
                    color: controller.index.value == 13
                        ? AppColor.selecteColor
                        : null,
                    onTap: () {
                      controller.index.value = 13;
                      Get.back();
                    },
                  ),
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Service Score",
                icon: FontAwesomeIcons.servicestack,
                color:
                    controller.index.value == 14 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 14;
                  Get.back();
                },
                selected: controller.index.value == 14,
              ),
              MenuItem(
                minWidth: 40,
                text: "LogOut",
                icon: FontAwesomeIcons.rightToBracket,
                color:
                    controller.index.value == 15 ? AppColor.selecteColor : null,
                onTap: () {
                  controller.index.value = 15;
                  Get.back();
                },
                selected: controller.index.value == 15,
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
