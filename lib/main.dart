import 'package:clinix_admin_panel/screens/main_screen/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const ClinixAdminPanel());
}

class ClinixAdminPanel extends StatelessWidget {
  const ClinixAdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinix Admin Panel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreenView(),
    );
  }
}
