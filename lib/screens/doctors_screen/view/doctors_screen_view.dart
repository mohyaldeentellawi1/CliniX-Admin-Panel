import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class DoctorsScreenView extends StatefulWidget {
  const DoctorsScreenView({super.key});

  @override
  State<DoctorsScreenView> createState() => _DoctorsScreenViewState();
}

class _DoctorsScreenViewState extends State<DoctorsScreenView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Doctor',
        texti: 'ClinicX',
        textii: 'Doctor',
        webTabletViewWidget: const SizedBox(),
        mobileWidget: const SizedBox());
  }
}
