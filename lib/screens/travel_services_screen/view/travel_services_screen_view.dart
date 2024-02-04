import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/travel_services_screen/widgets/travel_service_body.dart';
import 'package:flutter/material.dart';

class TravelservicesScreenView extends StatelessWidget {
  const TravelservicesScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: 'Profile',
        texti: 'ClinicX',
        textii: 'Travel services',
        webTabletViewWidget: const TravelServiceBody(),
        mobileWidget: const TravelServiceBody());
  }
}
