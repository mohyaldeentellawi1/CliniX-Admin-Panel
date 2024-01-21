import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddVideoForm extends StatefulWidget {
  const AddVideoForm({super.key});

  @override
  State<AddVideoForm> createState() => _AddVideoFormState();
}

class _AddVideoFormState extends State<AddVideoForm> {
  ImagePicker videoPicker = ImagePicker();

  List<XFile> videos = [];

  Future<void> pickedVideoFromFolder() async {
    try {
      XFile? video = await videoPicker.pickVideo(source: ImageSource.gallery);
      setState(() {
        videos.add(video!);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const Text('You can Add Video to Videos List'),
            CustomContainerButton(
                onTap: pickedVideoFromFolder, buttonName: 'Add Video'),
          ],
        ),
        const SizedBox(width: 10),
        for (int i = 0; i < videos.length; i++)
          if (videos[i].name.isNotEmpty) Text('${videos[i].path} ')
      ],
    );
  }
}
