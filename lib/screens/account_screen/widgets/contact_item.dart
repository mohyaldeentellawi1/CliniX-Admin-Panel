import 'package:clinix_admin_panel/modules/calendar_data_module.dart';
import 'package:clinix_admin_panel/screens/account_screen/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.contact});

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
            CustomTextButton(buttonName: 'Receives Enquiries', onTap: () {}),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            CustomTextButton(buttonName: 'Change Password', onTap: () {}),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            CustomTextButton(buttonName: 'Edit Contact', onTap: () {}),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            CustomTextButton(buttonName: 'Remove Contact', onTap: () {}),
          ],
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
