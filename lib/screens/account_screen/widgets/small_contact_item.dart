import 'package:clinix_admin_panel/screens/account_screen/widgets/small_custom_text_button.dart';
import 'package:flutter/material.dart';

import '../../../modules/calendar_data_module.dart';

class SmallContactItem extends StatelessWidget {
  const SmallContactItem({super.key, required this.contact});

  final ContactModule contact;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.email),
        const SizedBox(width: 5),
        Expanded(
            child: Text(
          contact.email,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        )),
        const Spacer(),
        Wrap(
          children: [
            SmallCustomTextButton(icon: Icons.receipt, onTap: () {}),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            SmallCustomTextButton(icon: Icons.change_circle, onTap: () {}),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            SmallCustomTextButton(icon: Icons.edit, onTap: () {}),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            SmallCustomTextButton(icon: Icons.remove, onTap: () {}),
          ],
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
