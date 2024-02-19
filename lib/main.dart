import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:clinix_admin_panel/screens/login_screen/view/login_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:media_kit/media_kit.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  await GetStorage.init();
  runApp(const ClinixAdminPanel());
}

class ClinixAdminPanel extends StatelessWidget {
  const ClinixAdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Clinix Admin Panel',
            theme: MyTheme.lightTheme,
            darkTheme: MyTheme.darkTheme,
            themeMode: themeProvider.themeMode,
            home: const LoginScreenView(),
          );
        });
  }
}
