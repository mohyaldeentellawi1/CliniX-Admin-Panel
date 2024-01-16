import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

class AddVideoScreenView extends StatelessWidget {
  const AddVideoScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MainScaffold(
        width: width,
        textL: '',
        texti: 'ClinicX',
        textii: 'Add Video',
        webTabletViewWidget:
            Container(color: Colors.blue, child: const Text('3')),
        mobileWidget: const SizedBox());
  }
}
