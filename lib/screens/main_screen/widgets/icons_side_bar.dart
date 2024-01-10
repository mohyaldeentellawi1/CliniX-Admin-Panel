import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                Container(height: 25),
                Image.asset(
                  "assets/image/logo1.png",
                  fit: BoxFit.contain,
                  height: 25,
                  width: 25,
                ),
                Container(height: 30),
                SideBarIconItem(
                    icon: FontAwesomeIcons.calendar,
                    onTap: () {},
                    selected: controller.index.value == 0),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.person,
                    onTap: () {},
                    selected: controller.index.value == 1),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.addressCard,
                    onTap: () {},
                    selected: controller.index.value == 2),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.staffSnake,
                    onTap: () {},
                    selected: controller.index.value == 3),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.staffSnake,
                    onTap: () {},
                    selected: controller.index.value == 4),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.star,
                    onTap: () {},
                    selected: controller.index.value == 5),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.servicestack,
                    onTap: () {},
                    selected: controller.index.value == 6),
                Container(height: 5),
                SideBarIconItem(
                    icon: FontAwesomeIcons.rightToBracket,
                    onTap: () {},
                    selected: controller.index.value == 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SideBarIconItem extends StatelessWidget {
  const SideBarIconItem(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.selected});

  final IconData icon;
  final void Function() onTap;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: AppColor.darkblack.withOpacity(.10),
            blurRadius: 3,
            spreadRadius: .1,
            offset: Offset.zero,
          )
        ]),
        child: Icon(icon),
      ),
      onTap: onTap,
      selected: selected,
    );
  }
}

 // setState(() {
        //   expandOrShrinkDrawer();
        // });
        // controller.index.value = 0;


        //controller.index.value == 0