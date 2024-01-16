import 'package:clinix_admin_panel/controllers/page_controller.dart';
import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({super.key});
  CustomPageController get contoller => Get.put(CustomPageController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
      width: width,
      textL: 'Profile',
      texti: '',
      textii: '',
      webTabletViewWidget: SizedBox(
        height: 500,
        child: PageView(
          controller: contoller,
          scrollDirection: Axis.vertical,
          scrollBehavior: const ScrollBehavior(),
          children: contoller.pageView,
        ),
      ),
      mobileWidget: const SizedBox(),
    );
  }
}
