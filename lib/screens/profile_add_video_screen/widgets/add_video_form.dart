import 'dart:async';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import '../../../common/sources/sources_native.dart';
import '../../../core/utils/methods.dart';
import '../../../core/widgets/custom_container_button.dart';
import 'add_video_item.dart';

class AddVideoForm extends StatefulWidget {
  const AddVideoForm({super.key});

  @override
  State<AddVideoForm> createState() => _AddVideoFormState();
}

class _AddVideoFormState extends State<AddVideoForm> {
  late final Player player = Player();

  late final VideoController controller = VideoController(
    player,
    configuration: configuration.value,
  );

  late final GlobalKey<VideoState> key = GlobalKey<VideoState>();
  Future<void> showFilePicker(BuildContext context, Player player) async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);
    if (result?.files.isNotEmpty ?? false) {
      final file = result!.files.first;
      if (kIsWeb) {
        await player.open(Media(convertBytesToURL(file.bytes!)));
      } else {
        await player.open(Media(file.path!));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    // player.open(Media(sources[0]));
    player.stream.error.listen((error) => debugPrint(error));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                'Do not forget to use the update button after changes are made. Otherwise, the changes made may be lost.'),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SizedBox(
              width: 300,
              height: 500,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CustomAddVideoItem(
                    onDisplay: () {},
                    onAdd: () {
                      showFilePicker(context, player);
                    },
                  );
                },
              ),
            )),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                    width: 400,
                    height: 400,
                    child: Video(key: key, controller: controller)),
                const SizedBox(height: 50),
                CustomContainerButton(
                    paddingWidth: 100,
                    paddingheight: 10,
                    onTap: () {},
                    buttonName: "Update")
              ],
            )),
          ],
        ),
      ],
    );
  }
}
