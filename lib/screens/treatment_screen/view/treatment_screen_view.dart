import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class TreatmentScreenView extends StatelessWidget {
  const TreatmentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Treatment',
        webTabletViewWidget: const SizedBox(),
        mobileWidget: const SizedBox());
  }
}
