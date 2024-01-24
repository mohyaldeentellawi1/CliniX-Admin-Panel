import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/text_style.dart';
import '../../../core/widgets/custom_container_button.dart';

class CustomBeforAfterContainer extends StatelessWidget {
  const CustomBeforAfterContainer(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.listIsEmpty});

  final String text;
  final void Function() onPressed;
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
              color: AppColor.dark,
            ),
            const SizedBox(height: 15),
            CustomContainerButton(onTap: onPressed, buttonName: 'Add Images'),
            const SizedBox(height: 15),
            listIsEmpty
                ? const SizedBox()
                : CustomContainerButton(onTap: onPressed, buttonName: 'Uplode'),
          ],
        ),
      ),
    );
  }
}
