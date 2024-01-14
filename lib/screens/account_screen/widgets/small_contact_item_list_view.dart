import 'package:clinix_admin_panel/screens/account_screen/widgets/small_contact_item.dart';
import 'package:flutter/material.dart';

import '../../../data/contact_item_dummy_data.dart';

class SmallContactItemListView extends StatelessWidget {
  const SmallContactItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: contactList.map((e) => SmallContactItem(contact: e)).toList(),
    );
  }
}
