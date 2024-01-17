import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/form_side_body.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/maps_side_body.dart';

import 'package:flutter/material.dart';

class ClinicInformation extends StatefulWidget {
  const ClinicInformation({super.key});

  @override
  State<ClinicInformation> createState() => _ClinicInformationState();
}

class _ClinicInformationState extends State<ClinicInformation> {
  TextEditingController clinicNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Clinic Information',
        webTabletViewWidget: const Row(
          children: [
            FormSideBody(),
            SizedBox(width: 50),
            MapsSideBody(),
            SizedBox(width: 20),
          ],
        ),
        mobileWidget: const SizedBox());
  }
}
