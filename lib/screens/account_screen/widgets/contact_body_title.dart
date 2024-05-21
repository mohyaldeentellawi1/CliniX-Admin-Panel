import 'package:flutter/material.dart';

class ContactBodyTitle extends StatefulWidget {
  const ContactBodyTitle({super.key});

  @override
  State<ContactBodyTitle> createState() => _ContactBodyTitleState();
}

class _ContactBodyTitleState extends State<ContactBodyTitle> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Text('Contact'),
        SizedBox(width: 10),
        // CustomContainerButton(onTap: () {}, buttonName: 'Add New Contact'),
      ],
    );
  }
}
