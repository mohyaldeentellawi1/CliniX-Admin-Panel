import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:clinix_admin_panel/screens/calender_screen/view/calendar.dart';
import 'package:flutter/cupertino.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../core/widgets/custom_container_button.dart';
import 'add_video_item.dart';

class AddVideoForm extends StatefulWidget {
  const AddVideoForm({super.key});

  @override
  State<AddVideoForm> createState() => _AddVideoFormState();
}

class _AddVideoFormState extends State<AddVideoForm> {
  late YoutubePlayerController youtubeUrl;
  Map<int, YoutubePlayerController> youTubeController = {};
  Map<int, TextEditingController> controllerMap = {};
  bool textEmpty = true;
  _AddVideoFormState() {
    for (int i = 0; i < 5; i++) {
      controllerMap[i] = TextEditingController();
      youtubeUrl = YoutubePlayerController();
    }
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      youTubeController[i] = youtubeUrl;
      playUrl(i);
    }
  }

  void playUrl(int index) {
    String sharedUrl = controllerMap[index]!.text;
    if (sharedUrl.isNotEmpty) {
      youtubeUrl = YoutubePlayerController.fromVideoId(
        autoPlay: true,
        videoId: YoutubePlayerController.convertUrlToId(sharedUrl)!,
        params: const YoutubePlayerParams(),
      );
      youTubeController[index] = youtubeUrl;
      if (textEmpty == true) {
        setState(() {
          textEmpty = false;
        });
      } else {
        setState(() {
          textEmpty = true;
        });
      }
    } else {
      textEmpty = true;
      setState(() {});
      print("Invalid YouTube URL");
    }
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
                    controller: controllerMap[index]!,
                    onDisplay: () {
                      playUrl(index);
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
                textEmpty
                    ? GestureDetector(
                        onTap: () {
                          showCupertinoDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (context) {
                              return const CupertinoAlertDialog(
                                  title: Text('No video to display'),
                                  content: Text(
                                      'Please enter a valid YouTube URL.'));
                            },
                          );
                        },
                        child: const CustomSvgItem(
                          icon: plsyvideo,
                          width: 300,
                          height: 300,
                        ),
                      )
                    : YoutubePlayer(
                        controller: youtubeUrl,
                        aspectRatio: 16 / 9,
                      ),
                const SizedBox(height: 50),
                CustomContainerButton(onTap: () {}, buttonName: "Update")
              ],
            )),
          ],
        ),
      ],
    );
  }
}
