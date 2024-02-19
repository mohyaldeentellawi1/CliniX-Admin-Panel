// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, depend_on_referenced_packages, non_constant_identifier_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, camel_case_types

import 'package:clinix_admin_panel/screens/main_screen/widgets/footer.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/full_app_bar.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/icons_side_bar.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/main_side_bar.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/small_app_bar.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/small_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../controllers/sidebar_controllers.dart';
import '../../../controllers/theme_controller.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  RxBool isExpanded = true.obs;
  SideBarController controller = Get.put(SideBarController());

  void expandOrShrinkDrawer() {
    setState(() {
      isExpanded.value = !isExpanded.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: width < 983
          ? PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: SmallAppBar(
                width: width,
                value: themeProvider.isDarkMode,
                onPressed: (value) {
                  themeProvider.toggleTheme(value);
                },
              ),
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: FullAppBar(
                value: themeProvider.isDarkMode,
                onPressed: (value) {
                  themeProvider.toggleTheme(value);
                },
                width: width,
                condition: isExpanded.isFalse && width > 983,
                onTap: () {
                  expandOrShrinkDrawer();
                },
              ),
            ),
      drawer: SmallDrawer(controller: controller),
      body: Row(
        children: [
          isExpanded.isFalse && width > 983
              ? IconsSideBar(controller: controller)
              : width > 983
                  ? MainSideBar(
                      controller: controller, onTap: expandOrShrinkDrawer)
                  : Container(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 18, bottom: 20),
                          child: Obx(
                            () => controller.page[controller.index.value],
                          ),
                        ),
                        Divider(height: 1),
                        FootterWidget()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
