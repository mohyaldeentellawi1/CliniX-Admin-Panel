import 'package:flutter/material.dart';

class CustomAddVideoItem extends StatelessWidget {
  const CustomAddVideoItem({
    super.key,
    required this.onAdd,
    required this.onDisplay,
  });

  final void Function() onAdd;
  final void Function() onDisplay;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        dense: true,
        leading: IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
        title: const Text('+ Add or Update the Video'),
        trailing: IconButton(
          onPressed: onDisplay,
          icon: const Icon(Icons.smart_display),
        ),
      ),
    );
  }
}
