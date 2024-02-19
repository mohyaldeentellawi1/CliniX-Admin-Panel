import 'package:clinix_admin_panel/core/utils/methods.dart';
import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_add_video_screen/widgets/add_video_form.dart';
import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

class AddVideoScreenView extends StatelessWidget {
  const AddVideoScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return ValueListenableBuilder<VideoControllerConfiguration>(
      valueListenable: configuration,
      builder: (context, value, child) {
        return MainScaffold(
            width: width,
            textL: 'Profile',
            texti: 'ClinicX',
            textii: 'Add Video',
            webTabletViewWidget: const AddVideoForm(),
            mobileWidget: const AddVideoForm());
      },
    );
  }
}
