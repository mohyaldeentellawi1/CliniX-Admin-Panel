import 'package:clinix_admin_panel/screens/account_screen/widgets/contact_item_list_view.dart';
import 'package:flutter/material.dart';

import 'contact_body_title.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactBodyTitle(),
        SizedBox(height: 20),
        ContactItemListView()
      ],
    );
  }
}
