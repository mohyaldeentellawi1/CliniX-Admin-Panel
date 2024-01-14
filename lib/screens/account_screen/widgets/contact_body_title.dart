import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

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
        InkWell(
          onTap: () {},
          onHover: _handleHover,
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: _isTouched ? AppColor.selecteColor : Colors.transparent,
                border: Border.all(color: AppColor.borders)),
            child: Text(
              'Add New Contact',
              style: TextStyle(
                  color: _isTouched ? AppColor.mainbackground : Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
