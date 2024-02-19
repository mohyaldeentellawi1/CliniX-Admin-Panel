import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/screens/login_screen/view/login_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/sidebar_controllers.dart';

import '../../../core/utils/text_style.dart';
import 'expansion_list_tile_item.dart';
import 'menu_item_in_expansion_list.dart';
import 'menu_item_in_side_bar.dart';

class SmallDrawer extends StatelessWidget {
  const SmallDrawer({super.key, required this.controller});
  final SideBarController controller;
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      controller.index.value = 0;
                      Get.back();
                    },
                    selected: controller.index.value == 0,
                  ),
                  MenuItem(
                    minWidth: 40,
                    text: "Account",
                    icon: account,
                    onTap: () {
                      controller.index.value = 1;
                      Get.back();
                    },
                    selected: controller.index.value == 1,
                  ),
                  ExpansionListCustom(
                    selected: controller.index.value == 2,
                    onExpansionChanged: (_) {},
                    title: "Profile",
                    icoN: profile,
                    children: [
                      Menu(
                        selected: controller.index.value == 2,
                        text: 'Clinic Information',
                        onTap: () {
                          controller.index.value = 2;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 3,
                        text: 'Clinic Description',
                        onTap: () {
                          controller.index.value = 3;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 4,
                        text: 'Videos',
                        onTap: () {
                          controller.index.value = 4;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 5,
                        text: 'Pictures',
                        onTap: () {
                          controller.index.value = 5;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 6,
                        text: 'Before & After',
                        onTap: () {
                          controller.index.value = 6;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 7,
                        text: 'Currency',
                        onTap: () {
                          controller.index.value = 7;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 8,
                        text: 'Opening Hour',
                        onTap: () {
                          controller.index.value = 8;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 9,
                        text: 'Premises',
                        onTap: () {
                          controller.index.value = 9;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 10,
                        text: 'Clinic Service',
                        onTap: () {
                          controller.index.value = 10;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 11,
                        text: 'Payment information',
                        onTap: () {
                          controller.index.value = 11;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 12,
                        text: 'Travel services',
                        onTap: () {
                          controller.index.value = 12;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 13,
                        text: 'Insurance',
                        onTap: () {
                          controller.index.value = 13;
                          Get.back();
                        },
                      ),
                      Menu(
                        selected: controller.index.value == 14,
                        text: 'Languages',
                        onTap: () {
                          controller.index.value = 14;
                          Get.back();
                        },
                      ),
                      Menu(
                          text: 'Accreditations',
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
                    onTap: () {
                      Get.offAll(const LoginScreenView(),
                          fullscreenDialog: true);
                    },
                    selected: controller.index.value == 19,
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.all(40),
                    child: Image.asset(
                      "assets/image/logo1.png",
                    ),
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
