// ignore_for_file: must_be_immutable

import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../controllers/sidebar_controllers.dart';
import '../../../core/utils/colors.dart';
import 'expansion_list_tile_item.dart';
import 'menu_item_in_expansion_list.dart';
import 'menu_item_in_side_bar.dart';

class SmallDrawer extends StatelessWidget {
  const SmallDrawer({super.key, required this.controller});
  final SideBarController controller;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 900,
              width: 250,
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
                            height: 70,
                            width: 70,
                          ),
                          Container(width: 10),
                          const Column(
                            children: [
                              Text("ClinicX"),
                              Text(
                                'V 1.0.0',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Menu",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MenuItem(
                      minWidth: 40,
                      text: "Calender",
                      icon: calendar,
                      color: controller.index.value == 0
                          ? AppColor.selecteColor
                          : Colors.transparent,
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
                      selected: controller.index.value == 2,
                      onExpansionChanged: (p0) {},
                      title: "Profile",
                      icoN: profile,
                      color: controller.index.value == 2
                          ? AppColor.selecteColor
                          : AppColor.darkblack,
                      children: [
                        Menu(
                          selected: controller.index.value == 2,
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
                          selected: controller.index.value == 3,
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
                          selected: controller.index.value == 4,
                          text: 'Videos',
                          color: controller.index.value == 4
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 4;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 5,
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
                          selected: controller.index.value == 6,
                          text: 'Before & After',
                          color: controller.index.value == 6
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 6;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 7,
                          text: 'Currency',
                          color: controller.index.value == 7
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 7;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 8,
                          text: 'Opening Hour',
                          color: controller.index.value == 8
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 8;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 9,
                          text: 'Premises',
                          color: controller.index.value == 9
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 9;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 10,
                          text: 'Clinic Service',
                          color: controller.index.value == 10
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 10;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 11,
                          text: 'Payment Information',
                          color: controller.index.value == 11
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 11;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 12,
                          text: 'Travel Service',
                          color: controller.index.value == 12
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 12;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 13,
                          text: 'Insurance',
                          color: controller.index.value == 13
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 13;
                            Get.back();
                          },
                        ),
                        Menu(
                          selected: controller.index.value == 14,
                          text: 'Languages',
                          color: controller.index.value == 14
                              ? AppColor.selecteColor
                              : AppColor.darkblack,
                          onTap: () {
                            controller.index.value = 14;
                            Get.back();
                          },
                        ),
                        Menu(
                            text: 'Accreditations',
                            color: controller.index.value == 15
                                ? AppColor.selecteColor
                                : AppColor.black,
                            onTap: () {
                              controller.index.value = 15;
                              Get.back();
                            },
                            selected: controller.index.value == 15)
                      ],
                    ),
                    MenuItem(
                      minWidth: 40,
                      text: "Treatments",
                      icon: treatment,
                      color: controller.index.value == 16
                          ? AppColor.selecteColor
                          : Colors.transparent,
                      onTap: () {
                        controller.index.value = 16;
                        Get.back();
                      },
                      selected: controller.index.value == 16,
                    ),
                    MenuItem(
                      minWidth: 40,
                      text: "Doctors",
                      icon: staff,
                      color: controller.index.value == 17
                          ? AppColor.selecteColor
                          : Colors.transparent,
                      onTap: () {
                        controller.index.value = 17;
                        Get.back();
                      },
                      selected: controller.index.value == 17,
                    ),
                    MenuItem(
                      minWidth: 40,
                      text: "Faq",
                      icon: faq,
                      color: controller.index.value == 18
                          ? AppColor.selecteColor
                          : Colors.transparent,
                      onTap: () {
                        controller.index.value = 18;
                        Get.back();
                      },
                      selected: controller.index.value == 18,
                    ),
                    MenuItem(
                      minWidth: 40,
                      text: "LogOut",
                      icon: logout,
                      color: controller.index.value == 19
                          ? AppColor.selecteColor
                          : Colors.transparent,
                      onTap: () {
                        controller.index.value = 19;
                        Get.back();
                      },
                      selected: controller.index.value == 19,
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
          ],
        ),
      ),
    );
  }
}
