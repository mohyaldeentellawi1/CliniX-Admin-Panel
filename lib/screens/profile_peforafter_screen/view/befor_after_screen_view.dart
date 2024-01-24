import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/widgets/mobile_body.dart';
import 'package:clinix_admin_panel/screens/profile_peforafter_screen/widgets/web_tablet_body.dart';
import 'package:flutter/material.dart';

class BeforAfterScreenView extends StatelessWidget {
  const BeforAfterScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Before & After',
        webTabletViewWidget: const WebTabletView(),
        mobileWidget: const MobileBody());
  }
}
