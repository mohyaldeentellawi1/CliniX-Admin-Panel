import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class ClinicInformation extends StatelessWidget {
  const ClinicInformation({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Clinic Information',
        webTabletViewWidget:
            Container(color: Colors.amber, child: const Text('1')),
        mobileWidget: const SizedBox());
  }
}
