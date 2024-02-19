import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/treatment_screen/widgets/treatment_body.dart';
import 'package:flutter/material.dart';

class TreatmentScreenView extends StatelessWidget {
  const TreatmentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Treatment',
        texti: 'ClinicX',
        textii: 'Treatment',
        webTabletViewWidget: const TreatmentBody(),
        mobileWidget: const SizedBox());
  }
}
