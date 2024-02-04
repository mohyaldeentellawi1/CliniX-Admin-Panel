import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class FaqScreenView extends StatelessWidget {
  const FaqScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Faq',
        texti: 'ClinicX',
        textii: 'faq',
        webTabletViewWidget: const SizedBox(),
        mobileWidget: const SizedBox());
  }
}
