import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class PicturesScreenView extends StatelessWidget {
  const PicturesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Pictures',
        webTabletViewWidget:
            Container(color: Colors.black, child: const Text('4')),
        mobileWidget: const SizedBox());
  }
}
