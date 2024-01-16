import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class CurrencyScreenView extends StatelessWidget {
  const CurrencyScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Currency',
        webTabletViewWidget:
            Container(color: Colors.teal, child: const Text('1')),
        mobileWidget: const SizedBox());
  }
}
