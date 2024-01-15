import 'package:clinix_admin_panel/controllers/sidebar_controllers.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:flutter/material.dart';

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
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  leading: Image.asset(
                    logo,
                    width: 50,
                    height: 50,
                  ),
                  title: const Text('ClinicX'),
                  titleTextStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                  trailing: IconButton(
                      onPressed: onTap, icon: const Icon(Icons.menu)),
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
                icon: calendar,
                color: controller.index.value == 0
                    ? AppColor.selecteColor
                    : Colors.black,
                onTap: () {
                  controller.index.value = 0;
                  Get.back();
                },
                selected: controller.index.value == 0,
              ),
              MenuItem(
                minWidth: 40,
                text: "Account",
                icon: account,
                color: controller.index.value == 1
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  controller.index.value = 1;
                  Get.back();
                },
                selected: controller.index.value == 1,
              ),
              ExpansionListCustom(
                title: "Profile",
                icoN: profile,
                color: controller.index.value == 2
                    ? AppColor.selecteColor
                    : AppColor.darkblack,
                children: [
                  Menu(
                    text: 'Clinic Information',
                    color: controller.index.value == 2
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 2;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Clinic Description',
                    color: controller.index.value == 3
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 3;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Add Video',
                    color: controller.index.value == 4
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 4;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Pictures',
                    color: controller.index.value == 5
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 5;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Currency',
                    color: controller.index.value == 6
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 6;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Opening Hour',
                    color: controller.index.value == 7
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 7;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Clinic Service',
                    color: controller.index.value == 8
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 8;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: 'Payment information',
                    color: controller.index.value == 9
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
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
                icon: treatment,
                color: controller.index.value == 10
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  controller.index.value = 10;
                  Get.back();
                },
                selected: controller.index.value == 10,
              ),
              MenuItem(
                minWidth: 40,
                text: "Staff",
                icon: staff,
                color: controller.index.value == 11
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  controller.index.value = 11;
                  Get.back();
                },
                selected: controller.index.value == 11,
              ),
              ExpansionListCustom(
                title: "Reviews",
                icoN: review,
                color: AppColor.selecteColor,
                children: [
                  Menu(
                    text: "Overview",
                    color: controller.index.value == 12
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      controller.index.value = 12;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: "Invite patients to leave a review",
                    color: controller.index.value == 13
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
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
                icon: score,
                color: controller.index.value == 14
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  controller.index.value = 14;
                  Get.back();
                },
                selected: controller.index.value == 14,
              ),
              MenuItem(
                minWidth: 40,
                text: "LogOut",
                icon: logout,
                color: controller.index.value == 15
                    ? AppColor.selecteColor
                    : Colors.transparent,
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
