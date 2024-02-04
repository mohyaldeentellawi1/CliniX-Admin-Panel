// ignore_for_file: unused_field

import 'package:clinix_admin_panel/controllers/sidebar_controllers.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/utils/colors.dart';
import 'expansion_list_tile_item.dart';
import 'menu_item_in_expansion_list.dart';
import 'menu_item_in_side_bar.dart';

class MainSideBar extends StatefulWidget {
  const MainSideBar({
    super.key,
    required this.controller,
    required this.onTap,
  });
  final SideBarController controller;

  final void Function() onTap;

  @override
  State<MainSideBar> createState() => _MainSideBarState();
}

class _MainSideBarState extends State<MainSideBar> {
  bool _isExpanded = false;

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
                      onPressed: widget.onTap, icon: const Icon(Icons.menu)),
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
                color: widget.controller.index.value == 0
                    ? AppColor.selecteColor
                    : Colors.black,
                onTap: () {
                  widget.controller.index.value = 0;
                  Get.back();
                },
                selected: widget.controller.index.value == 0,
              ),
              MenuItem(
                minWidth: 40,
                text: "Account",
                icon: account,
                color: widget.controller.index.value == 1
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 1;
                  Get.back();
                },
                selected: widget.controller.index.value == 1,
              ),
              ExpansionListCustom(
                selected: _isExpanded,
                onExpansionChanged: (bool isExpanded) {
                  setState(() {
                    _isExpanded = isExpanded;
                  });
                },
                title: "Profile",
                icoN: profile,
                color: widget.controller.index.value == 2
                    ? AppColor.selecteColor
                    : AppColor.darkblack,
                children: [
                  Menu(
                    selected: widget.controller.index.value == 2,
                    text: 'Clinic Information',
                    color: widget.controller.index.value == 2
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 2;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 3,
                    text: 'Clinic Description',
                    color: widget.controller.index.value == 3
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 3;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 4,
                    text: 'Videos',
                    color: widget.controller.index.value == 4
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 4;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 5,
                    text: 'Pictures',
                    color: widget.controller.index.value == 5
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 5;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 6,
                    text: 'Before & After',
                    color: widget.controller.index.value == 6
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 6;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 7,
                    text: 'Currency',
                    color: widget.controller.index.value == 7
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 7;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 8,
                    text: 'Opening Hour',
                    color: widget.controller.index.value == 8
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 8;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 9,
                    text: 'Premises',
                    color: widget.controller.index.value == 9
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 9;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 10,
                    text: 'Clinic Service',
                    color: widget.controller.index.value == 10
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 10;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 11,
                    text: 'Payment information',
                    color: widget.controller.index.value == 11
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 11;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 12,
                    text: 'Travel services',
                    color: widget.controller.index.value == 12
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 12;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 13,
                    text: 'Insurance',
                    color: widget.controller.index.value == 13
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 13;
                      Get.back();
                    },
                  ),
                  Menu(
                    selected: widget.controller.index.value == 14,
                    text: 'Languages',
                    color: widget.controller.index.value == 14
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 14;
                      Get.back();
                    },
                  ),
                  Menu(
                      text: 'Accreditations',
                      color: widget.controller.index.value == 15
                          ? AppColor.selecteColor
                          : AppColor.black,
                      onTap: () {
                        widget.controller.index.value = 15;
                        Get.back();
                      },
                      selected: widget.controller.index.value == 15)
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Treatments",
                icon: treatment,
                color: widget.controller.index.value == 16
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 16;
                  Get.back();
                },
                selected: widget.controller.index.value == 16,
              ),
              MenuItem(
                minWidth: 40,
                text: "Doctors",
                icon: staff,
                color: widget.controller.index.value == 17
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 17;
                  Get.back();
                },
                selected: widget.controller.index.value == 17,
              ),
              MenuItem(
                minWidth: 40,
                text: "Faq",
                icon: faq,
                color: widget.controller.index.value == 18
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 18;
                  Get.back();
                },
                selected: widget.controller.index.value == 18,
              ),
              MenuItem(
                minWidth: 40,
                text: "LogOut",
                icon: logout,
                color: widget.controller.index.value == 19
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 19;
                  Get.back();
                },
                selected: widget.controller.index.value == 19,
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
