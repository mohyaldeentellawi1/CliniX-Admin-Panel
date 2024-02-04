import 'package:clinix_admin_panel/screens/profile_currency_screen.dart/widgets/currency_mobile_body.dart';
import 'package:clinix_admin_panel/screens/profile_currency_screen.dart/widgets/currency_web_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class CurrencyScreenView extends StatelessWidget {
  const CurrencyScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Currency',
        webTabletViewWidget: const CurrencyWebBody(),
        mobileWidget: const CurrencyMobileBody());
  }
}
