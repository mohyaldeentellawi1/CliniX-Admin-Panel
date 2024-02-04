import 'package:clinix_admin_panel/screens/profile_opening%20_hours_screen/widgets/opening_hour_mobile_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';
import '../widgets/opening_hour_web_body.dart';

class OpeningHoursScreenView extends StatelessWidget {
  const OpeningHoursScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Opening Hours',
        webTabletViewWidget: const OpeningHoursWebBody(),
        mobileWidget: const OpeningHoursMobileBody());
  }
}
