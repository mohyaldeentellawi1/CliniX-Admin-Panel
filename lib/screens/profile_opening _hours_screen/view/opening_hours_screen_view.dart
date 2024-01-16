import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class OpeningHoursScreenView extends StatelessWidget {
  const OpeningHoursScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Opening Hours',
        webTabletViewWidget:
            Container(color: Colors.black, child: const Text('4')),
        mobileWidget: const SizedBox());
  }
}
