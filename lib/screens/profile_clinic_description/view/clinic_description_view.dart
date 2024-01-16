import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class ClinicDescriptionView extends StatelessWidget {
  const ClinicDescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Clinic Description',
        webTabletViewWidget:
            Container(color: Colors.red, child: const Text('2')),
        mobileWidget: const SizedBox());
  }
}
