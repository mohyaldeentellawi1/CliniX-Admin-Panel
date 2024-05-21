import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_add_video_screen/widgets/add_video_form.dart';
import 'package:flutter/material.dart';

class AddVideoScreenView extends StatelessWidget {
  const AddVideoScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    print(width);
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Add Video',
        webTabletViewWidget: const AddVideoForm(),
        mobileWidget: const AddVideoForm());
  }
}
