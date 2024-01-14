import 'package:clinix_admin_panel/screens/account_screen/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Account Settings:'),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                const Text(' Call Recordings: '),
                const Text('ON'),
                const SizedBox(width: 5),
                CustomTextButton(buttonName: 'Change', onTap: () {}),
              ],
            ),
            const Text('Permission granted on 23 Oct 2023',
                style: TextStyle(color: Colors.grey, fontSize: 10))
          ],
        ),
        const SizedBox(height: 25),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Account is suspended'),
            Text(
                'Your account is currently suspended and not visible to visitors on the website. Please email us at customersuccess@whatclinic.com if you wish to reactivate your account.',
                style: TextStyle(color: Colors.grey, fontSize: 10))
          ],
        ),
      ],
    );
  }
}
