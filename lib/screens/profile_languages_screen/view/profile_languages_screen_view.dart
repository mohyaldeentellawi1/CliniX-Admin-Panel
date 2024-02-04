import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_languages_screen/widgets/languages_Web_screen_body.dart';
import 'package:flutter/material.dart';

import '../widgets/languages_mobil_screen_body.dart';

class ProfileLanguagesScreenView extends StatelessWidget {
  const ProfileLanguagesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Languages',
        webTabletViewWidget: const LanguagesWebScreenBody(),
        mobileWidget: const LanguagesMobilScreenBody());
  }
}
