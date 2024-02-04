import 'package:clinix_admin_panel/screens/profile_payment_information_screen/widgets/payment_info_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class PaymentinformationScreenView extends StatelessWidget {
  const PaymentinformationScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Payment information',
        webTabletViewWidget: const PaymentInfoBody(),
        mobileWidget: const PaymentInfoBody());
  }
}
