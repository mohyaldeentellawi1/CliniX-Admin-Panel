import 'package:flutter/material.dart';

import 'custom_text_button.dart';

class AccountSecondRow extends StatelessWidget {
  const AccountSecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            const Text('Account Information:'),
            const SizedBox(width: 5),
            CustomTextButton(
              buttonName: 'Update',
              onTap: () {},
            ),
          ],
        ),
        Wrap(
          children: [
            const Text('VAT number:'),
            const SizedBox(width: 5),
            CustomTextButton(
              buttonName: 'Set',
              onTap: () {},
            ),
          ],
        ),
        const Text(
          'Your business is located outside the EU. You will not be charged VAT.',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
