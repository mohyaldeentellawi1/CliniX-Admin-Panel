import 'package:clinix_admin_panel/screens/profile_clinic_services_screen/widgets/clinic_service_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class ClinicservicesScreenView extends StatelessWidget {
  const ClinicservicesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Clinic services',
        webTabletViewWidget: const ClinicServiceBody(),
        mobileWidget: const ClinicServiceBody());
  }
}
