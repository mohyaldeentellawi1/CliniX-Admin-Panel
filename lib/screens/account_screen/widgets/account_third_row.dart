import 'package:flutter/material.dart';

import 'custom_text_button.dart';

class AccountThirdRow extends StatelessWidget {
  const AccountThirdRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Invoices:'),
        const SizedBox(height: 5),
        Wrap(
          children: [
            const Text('23 Oct 2023 (€77)'),
            const SizedBox(width: 20),
            CustomTextButton(
              buttonName: 'download',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
