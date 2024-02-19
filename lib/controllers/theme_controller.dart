import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  final GetStorage _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeProvider() {
    _loadThemeFromBox();
  }

  Future<void> _saveThemeToBox(bool value) async {
    await _box.write(_key, value);
  }

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    await _saveThemeToBox(isOn);
  }

  Future<void> _loadThemeFromBox() async {
    bool savedTheme = _box.read(_key);
    themeMode = savedTheme ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    useMaterial3: false,
    colorScheme: const ColorScheme.dark(),
    appBarTheme:
        const AppBarTheme(backgroundColor: AppColor.black, elevation: 0),
    scaffoldBackgroundColor: AppColor.black,
    iconTheme: const IconThemeData(color: AppColor.mainbackground),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.mainbackground),
    )),
  );
  static final lightTheme = ThemeData(
    useMaterial3: false,
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.mainbackground, elevation: 0),
    scaffoldBackgroundColor: AppColor.mainbackground,
    iconTheme: const IconThemeData(color: AppColor.black),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.black),
    )),
  );
}


/*
 final GetStorage _box = GetStorage();
  final _key = 'isDarkMode';
  Future<void> _saveThemeToBox(bool isDarkMode) async {
    await _box.write(_key, isDarkMode);
  }

    Future<bool> _loadThemeFromBox() async {
    return _box.read<bool>(_key) ?? false;
  }
 */