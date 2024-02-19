import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widgets/custom_container_button.dart';

class CustomBeforAfterContainer extends StatelessWidget {
  const CustomBeforAfterContainer(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.listIsEmpty,
      required this.uplodePressed});

  final String text;
  final void Function() onPressed;
  final void Function() uplodePressed;
  final bool listIsEmpty;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.borders)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResponsiveTextStyle(
              text: text,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 15),
            CustomContainerButton(onTap: onPressed, buttonName: 'Add Images'),
            const SizedBox(height: 15),
            listIsEmpty
                ? const SizedBox()
                : TextButton.icon(
                    onPressed: uplodePressed,
                    icon: const Icon(CupertinoIcons.cloud_upload),
                    label: const Text('Uplode'))
          ],
        ),
      ),
    );
  }
}
