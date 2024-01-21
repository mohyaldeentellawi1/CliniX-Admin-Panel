import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/form_side_body.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/maps_side_body.dart';

import 'package:flutter/material.dart';

class ClinicInformationScreenView extends StatelessWidget {
  const ClinicInformationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
      width: width,
      textL: 'Profile',
      texti: 'ClinicX',
      textii: 'Clinic Information',
      webTabletViewWidget: const Row(
        children: [
          FormSideBody(),
          SizedBox(width: 10),
          Expanded(child: MapsSideBody()),
        ],
      ),
      mobileWidget: const SizedBox(),
    );
  }
}
