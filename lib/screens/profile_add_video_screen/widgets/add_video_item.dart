import 'package:flutter/material.dart';

import '../../profile_clinic_information/widgets/custom_text_field.dart';

class CustomAddVideoItem extends StatelessWidget {
  const CustomAddVideoItem({
    super.key,
    required this.controller,
    required this.onRemove,
    required this.onDisplay,
  });

  final TextEditingController controller;
  final void Function() onRemove;
  final void Function() onDisplay;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        dense: true,
        leading: IconButton(
            onPressed: onRemove, icon: const Icon(Icons.remove_circle)),
        title: const Text('+ Add or Update the Video'),
        subtitle: CustomTextFeild(
          controller: controller,
          keyboardType: TextInputType.url,
          labelText: 'Add Video Url here...',
          width: 0,
        ),
        trailing: IconButton(
          onPressed: onDisplay,
          icon: const Icon(Icons.smart_display),
        ),
      ),
    );
  }
}
