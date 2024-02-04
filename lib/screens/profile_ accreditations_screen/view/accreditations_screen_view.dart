import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_%20accreditations_screen/widgets/accreditations_screen_body.dart';
import 'package:flutter/material.dart';

class AccreditationsScreenView extends StatelessWidget {
  const AccreditationsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Accreditations',
        webTabletViewWidget: const AccreditationsScreenBody(),
        mobileWidget: const AccreditationsScreenBody());
  }
}
