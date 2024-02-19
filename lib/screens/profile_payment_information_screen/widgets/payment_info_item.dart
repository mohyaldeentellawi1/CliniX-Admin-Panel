import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/text_style.dart';
import '../../profile_clinic_information/widgets/custom_text_field.dart';

class CustomPaymentInfoItem extends StatelessWidget {
  const CustomPaymentInfoItem(
      {super.key,
      required this.text,
      required this.isAvilable,
      required this.onChanged,
      required this.controller,
      required this.width});

  final String text;
  final bool isAvilable;
  final void Function(bool) onChanged;
  final TextEditingController controller;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ResponsiveTextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, text: text),
        ),
        Expanded(
          child: Transform.scale(
              scale: 0.9,
              child: Switch.adaptive(
                  value: isAvilable,
                  onChanged: onChanged,
                  activeColor: AppColor.selecteColor)),
        ),
        CustomTextFeild(
            labelText: 'Description...',
            controller: controller,
            keyboardType: TextInputType.text,
            width: width)
      ],
    );
  }
}
