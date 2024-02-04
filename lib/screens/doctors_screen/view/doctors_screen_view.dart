import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class DoctorsScreenView extends StatelessWidget {
  const DoctorsScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Doctors',
        texti: 'CliniX',
        textii: 'Doctors',
        webTabletViewWidget: const SizedBox(),
        mobileWidget: const SizedBox());
  }
}
