import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_Insurance_screen/widgets/insurance_screen_body.dart';
import 'package:flutter/material.dart';

class InsuranceScreenView extends StatelessWidget {
  const InsuranceScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Insurance',
        webTabletViewWidget: const InsuranceScreenBody(),
        mobileWidget: const InsuranceScreenBody());
  }
}
