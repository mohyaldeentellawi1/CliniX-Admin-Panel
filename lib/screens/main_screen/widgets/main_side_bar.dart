// ignore_for_file: unused_field

import 'package:clinix_admin_panel/controllers/sidebar_controllers.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:clinix_admin_panel/screens/login_screen/view/login_screen_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
              child: Center(
            child: ListTile(
              leading: Image.asset(logo1),
              title: const ResponsiveTextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, text: 'ClinicX'),
              subtitle: const ResponsiveTextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10, text: 'V 1.0.0'),
              trailing: IconButton(
                onPressed: widget.onTap,
                icon: const Icon(Icons.menu),
              ),
            ),
          )),
          Expanded(
            child: Obx(
              () => ListView(
                children: [
                  MenuItem(
                    minWidth: 40,
                    text: "Calender",
                    icon: calendar,
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
                    children: [
                      Menu(
                        selected: widget.controller.index.value == 2,
                        text: 'Clinic Information',
                        onTap: () {
                          widget.controller.index.value = 2;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 3,
                        text: 'Clinic Description',
                        onTap: () {
                          widget.controller.index.value = 3;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 4,
                        text: 'Videos',
                        onTap: () {
                          widget.controller.index.value = 4;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 5,
                        text: 'Pictures',
                        onTap: () {
                          widget.controller.index.value = 5;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 6,
                        text: 'Before & After',
                        onTap: () {
                          widget.controller.index.value = 6;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 7,
                        text: 'Currency',
                        onTap: () {
                          widget.controller.index.value = 7;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 8,
                        text: 'Opening Hour',
                        onTap: () {
                          widget.controller.index.value = 8;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 9,
                        text: 'Premises',
                        onTap: () {
                          widget.controller.index.value = 9;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 10,
                        text: 'Clinic Service',
                        onTap: () {
                          widget.controller.index.value = 10;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 11,
                        text: 'Payment information',
                        onTap: () {
                          widget.controller.index.value = 11;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 12,
                        text: 'Travel services',
                        onTap: () {
                          widget.controller.index.value = 12;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 13,
                        text: 'Insurance',
                        onTap: () {
                          widget.controller.index.value = 13;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: widget.controller.index.value == 14,
                        text: 'Languages',
                        onTap: () {
                          widget.controller.index.value = 14;
                          Get.back();
                        },
                      ),
                      Menu(
                          text: 'Accreditations',
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
                    onTap: () {
                      widget.controller.index.value = 17;
                    },
                    selected: widget.controller.index.value == 17,
                  ),
                  MenuItem(
                    minWidth: 40,
                    text: "Faq",
                    icon: faq,
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
                    onTap: () {
                      Get.offAll(const LoginScreenView(),
                          fullscreenDialog: true);
                    },
                    selected: widget.controller.index.value == 19,
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.all(40),
                    child: Image.asset(logo1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
