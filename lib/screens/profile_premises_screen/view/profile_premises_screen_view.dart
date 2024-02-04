import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_premises_screen/widgets/premises_body.dart';
import 'package:flutter/material.dart';

class PremisesScreenView extends StatelessWidget {
  const PremisesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Premises',
        webTabletViewWidget: const PremisesBody(),
        mobileWidget: const PremisesBody());
  }
}
