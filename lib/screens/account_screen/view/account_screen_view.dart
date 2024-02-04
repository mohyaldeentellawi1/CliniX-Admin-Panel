import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/account_screen/widgets/account_settings.dart';
import 'package:clinix_admin_panel/screens/account_screen/widgets/account_third_row.dart';
import 'package:clinix_admin_panel/screens/account_screen/widgets/contact_body.dart';
import 'package:clinix_admin_panel/screens/account_screen/widgets/small_contact_body.dart';
import 'package:flutter/material.dart';

import '../widgets/account_first_row.dart';
import '../widgets/account_second_row.dart';

class AccountScreenView extends StatelessWidget {
  const AccountScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return MainScaffold(
      width: width,
      textL: 'Accont',
      texti: 'ClinicX',
      textii: 'Account',
      webTabletViewWidget: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountFirstRow(),
          AccountSecondRow(),
          SizedBox(height: 15),
          AccountThirdRow(),
          Divider(height: 50, color: Colors.grey),
          ContactBody(),
          Divider(height: 50, color: Colors.grey),
          AccountSettings()
        ],
      ),
      mobileWidget: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountFirstRow(),
          AccountSecondRow(),
          SizedBox(height: 15),
          AccountThirdRow(),
          Divider(height: 50, color: Colors.grey),
          SmallContactBody(),
          Divider(height: 50, color: Colors.grey),
          AccountSettings()
        ],
      ),
    );
  }
}
