import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:flutter/material.dart';

class SwitcLightDark extends StatefulWidget {
  const SwitcLightDark({super.key});

  @override
  State<SwitcLightDark> createState() => _SwitcLightDarkState();
}

class _SwitcLightDarkState extends State<SwitcLightDark> {
  bool _isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Icon(_isDarkMode
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          Transform.scale(
              scale: 0.8,
              child: Switch.adaptive(
                  inactiveTrackColor: AppColor.darkyellow,
                  activeColor: AppColor.selecteColor,
                  value: _isDarkMode,
                  onChanged: (newValue) {
                    setState(() {
                      _isDarkMode = newValue;
                    });
                  }))
        ],
      ),
    );
  }
}
