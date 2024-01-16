import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class ClinicservicesScreenView extends StatelessWidget {
  const ClinicservicesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Clinic services',
        webTabletViewWidget:
            Container(color: Colors.amber, child: const Text('1')),
        mobileWidget: const SizedBox());
  }
}
