import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:flutter/material.dart';

class ContactBodyTitle extends StatefulWidget {
  const ContactBodyTitle({super.key});

  @override
  State<ContactBodyTitle> createState() => _ContactBodyTitleState();
}

class _ContactBodyTitleState extends State<ContactBodyTitle> {
  bool _isTouched = false;

  void _handleHover(bool isHovering) {
    setState(() {
      _isTouched = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const Text('Contact'),
        const SizedBox(width: 10),
        CustomContainerButton(
            onTap: () {},
            onHover: _handleHover,
            isTouched: _isTouched,
            buttonName: 'Add New Contact'),
      ],
    );
  }
}
