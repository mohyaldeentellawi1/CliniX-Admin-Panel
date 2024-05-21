import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomAddVideoItem extends StatelessWidget {
  const CustomAddVideoItem({
    super.key,
    required this.onDisplay,
    required this.controller,
  });

  final void Function() onDisplay;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        dense: true,
        title: CustomTextFeild(
            labelText: 'Add video Url',
            controller: controller,
            keyboardType: TextInputType.text,
            width: 150),
        trailing: IconButton(
          onPressed: onDisplay,
          icon: const Icon(Icons.smart_display),
        ),
      ),
    );
  }
}
