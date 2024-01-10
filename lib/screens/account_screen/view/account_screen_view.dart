import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class AccountScreenView extends StatelessWidget {
  const AccountScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return MainScaffold(
        width: width,
        textL: 'Accont',
        texti: 'ClinicX',
        textii: 'Account',
        webTabletViewWidget: Container(
          child: const Text('Account Screen View'),
        ),
        mobileWidget: const Center(
          child: Text('Account Screen View'),
        ));
  }
}
