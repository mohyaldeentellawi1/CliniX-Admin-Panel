// ignore_for_file: unused_field

import 'package:clinix_admin_panel/controllers/page_controller.dart';
import 'package:clinix_admin_panel/controllers/sidebar_controllers.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/utils/colors.dart';
import 'expansion_list_tile_item.dart';
import 'menu_item_in_expansion_list.dart';
import 'menu_item_in_side_bar.dart';

class MainSideBar extends StatefulWidget {
  const MainSideBar(
      {super.key,
      required this.controller,
      required this.onTap,
      required this.pageController});
  final SideBarController controller;
  final CustomPageController pageController;

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
                },
                selected: widget.controller.index.value == 1,
              ),
              ExpansionListCustom(
                selected: widget.controller.index.value == 2,
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
                    text: 'Clinic Information',
                    color: widget.pageController.index.value == 0
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      widget.controller.index.value = 2;
                      if (widget.pageController.hasClients) {
                        widget.pageController.animateToPage(
                            widget.pageController.index.value = 0,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.bounceIn);
                      }
                    },
                  ),
                  Menu(
                    text: 'Clinic Description',
                    color: widget.pageController.index.value == 1
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 1);
                      }
                    },
                  ),
                  Menu(
                    text: 'Add Video',
                    color: widget.pageController.index.value == 2
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 2);
                      }
                    },
                  ),
                  Menu(
                    text: 'Pictures',
                    color: widget.pageController.index.value == 3
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 3);
                      }
                    },
                  ),
                  Menu(
                    text: 'Currency',
                    color: widget.pageController.index.value == 4
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 4);
                      }
                    },
                  ),
                  Menu(
                    text: 'Opening Hour',
                    color: widget.pageController.index.value == 5
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 5);
                      }
                    },
                  ),
                  Menu(
                    text: 'Clinic Service',
                    color: widget.pageController.index.value == 6
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 6);
                      }
                    },
                  ),
                  Menu(
                    text: 'Payment information',
                    color: widget.pageController.index.value == 7
                        ? AppColor.selecteColor
                        : AppColor.black,
                    onTap: () {
                      if (widget.pageController.hasClients) {
                        widget.pageController
                            .jumpToPage(widget.pageController.index.value = 7);
                      }
                    },
                  ),
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Treatments",
                icon: treatment,
                color: widget.controller.index.value == 3
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 3;
                  Get.back();
                },
                selected: widget.controller.index.value == 10,
              ),
              MenuItem(
                minWidth: 40,
                text: "Staff",
                icon: staff,
                color: widget.controller.index.value == 11
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 11;
                  Get.back();
                },
                selected: widget.controller.index.value == 11,
              ),
              ExpansionListCustom(
                onExpansionChanged: (bool isExpanded) {
                  if (widget.controller.index.value != 6) {
                    _isExpanded = false;
                  } else {
                    setState(() {
                      _isExpanded = isExpanded;
                    });
                  }
                },
                selected: widget.controller.index.value == 6,
                title: "Reviews",
                icoN: review,
                color: AppColor.selecteColor,
                children: [
                  Menu(
                    text: "Overview",
                    color: widget.controller.index.value == 12
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      widget.controller.index.value = 12;
                      Get.back();
                    },
                  ),
                  Menu(
                    text: "Invite patients to leave a review",
                    color: widget.controller.index.value == 13
                        ? AppColor.selecteColor
                        : AppColor.darkblack,
                    onTap: () {
                      widget.controller.index.value = 13;
                      Get.back();
                    },
                  ),
                ],
              ),
              MenuItem(
                minWidth: 40,
                text: "Service Score",
                icon: score,
                color: widget.controller.index.value == 14
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 14;
                  Get.back();
                },
                selected: widget.controller.index.value == 14,
              ),
              MenuItem(
                minWidth: 40,
                text: "LogOut",
                icon: logout,
                color: widget.controller.index.value == 15
                    ? AppColor.selecteColor
                    : Colors.transparent,
                onTap: () {
                  widget.controller.index.value = 15;
                  Get.back();
                },
                selected: widget.controller.index.value == 15,
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
