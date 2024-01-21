import 'package:clinix_admin_panel/screens/profile_pictures_screen/widgets/add_picture_form.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/main_scaffold.dart';

class PicturesScreenView extends StatelessWidget {
  const PicturesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Pictures',
        webTabletViewWidget: const AddPicturForm(),
        mobileWidget: const SizedBox());
  }
}
