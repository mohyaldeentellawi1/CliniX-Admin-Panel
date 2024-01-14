import 'package:clinix_admin_panel/screens/account_screen/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class AccountFirstRow extends StatelessWidget {
  const AccountFirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your subscription details:'),
            Wrap(
              children: [
                const Text('Type: FREE'),
                const SizedBox(width: 5),
                CustomTextButton(
                  buttonName: 'Upgrade',
                  onTap: () {},
                )
              ],
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your payment method:'),
            Wrap(
              children: [
                const Icon(Icons.credit_card),
                const SizedBox(width: 5),
                const Text('************6601'),
                const SizedBox(width: 5),
                CustomTextButton(
                  buttonName: 'Update',
                  onTap: () {},
                ),
                const SizedBox(width: 5),
                const Text('|'),
                const SizedBox(width: 5),
                CustomTextButton(
                  buttonName: 'Remove',
                  onTap: () {},
                ),
              ],
            ),
            const Text(
              'Expires on: 4/2028',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
