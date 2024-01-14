import 'package:clinix_admin_panel/screens/account_screen/widgets/small_contact_item_list_view.dart';
import 'package:flutter/material.dart';

import 'contact_body_title.dart';

class SmallContactBody extends StatelessWidget {
  const SmallContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactBodyTitle(),
        SizedBox(height: 20),
        SmallContactItemListView()
      ],
    );
  }
}
