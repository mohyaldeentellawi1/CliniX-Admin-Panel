import 'package:clinix_admin_panel/data/contact_item_dummy_data.dart';
import 'package:clinix_admin_panel/screens/account_screen/widgets/contact_item.dart';
import 'package:flutter/material.dart';

class ContactItemListView extends StatelessWidget {
  const ContactItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: contactList.map((e) => ContactItem(contact: e)).toList(),
    );
  }
}
