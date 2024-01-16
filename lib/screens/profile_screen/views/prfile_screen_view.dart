import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/profile_clinic_information/view/clinic_information.dart';
import 'package:flutter/material.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MainScaffold(
      width: width,
      textL: 'ClinicX',
      texti: '',
      textii: '',
      webTabletViewWidget: SizedBox(
        height: 500,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          scrollBehavior: const ScrollBehavior(),
          children: [
            const ClinicInformation(),
            Container(color: Colors.red, child: const Text('2')),
            Container(color: Colors.blue, child: const Text('3')),
          ],
        ),
      ),
      mobileWidget: const SizedBox(),
    );
  }
}
