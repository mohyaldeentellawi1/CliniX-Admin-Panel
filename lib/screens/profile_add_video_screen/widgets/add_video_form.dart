import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'add_video_item.dart';

class AddVideoForm extends StatefulWidget {
  const AddVideoForm({super.key});

  @override
  State<AddVideoForm> createState() => _AddVideoFormState();
}

class _AddVideoFormState extends State<AddVideoForm> {
  Map<int, TextEditingController> controllerMap = {};
  Map<int, VideoPlayerController> videoControllers = {};
  _AddVideoFormState() {
    for (int i = 0; i < 10; i++) {
      controllerMap[i] = TextEditingController();
    }
  }
  // void _initializeVideoPlayer(int index) {
  //   final url = controllerMap[index]?.text;
  //   if (url != null && url.isNotEmpty) {
  //     videoControllers[index]?.dispose();
  //     try {
  //       videoControllers[index] =
  //           VideoPlayerController.networkUrl(Uri.parse(url))
  //             ..initialize().then((_) {
  //               setState(() {});
  //             });
  //     } catch (e) {
  //       print(e.toString());
  //     }
  //   }
  // }

  // Future<void> _showVideoDialog(BuildContext context, String url) async {
  //   final VideoPlayerController videoController =
  //       VideoPlayerController.networkUrl(Uri.parse(url));
  //   await videoController.initialize();
  //   await showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         content: AspectRatio(
  //           aspectRatio: videoController.value.aspectRatio,
  //           child: VideoPlayer(videoController),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               // videoControllers.clear();
  //             },
  //             child: const Text('Close'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

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
                    onRemove: () {},
                    controller: controllerMap[index]!,
                  );
                },
              ),
            )),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(width: 400, height: 400, child: Image.asset(example)),
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
