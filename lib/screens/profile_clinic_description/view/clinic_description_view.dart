import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_description/widgets/clinic_description_editior.dart';
import 'package:flutter/material.dart';

class ClinicDescriptionScreenView extends StatelessWidget {
  const ClinicDescriptionScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Clinic Description',
        webTabletViewWidget: const ClinicDescriptionEditior(),
        mobileWidget: const ClinicDescriptionEditior());
  }
}
