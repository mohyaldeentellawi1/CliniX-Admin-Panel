import 'package:clinix_admin_panel/core/utils/colors.dart';

import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.labelText,
      required this.controller,
      required this.keyboardType,
      required this.width});
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: controller,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        keyboardType: keyboardType,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: AppColor.selecteColor)),
          labelText: labelText,
        ),
      ),
    );
  }
}
