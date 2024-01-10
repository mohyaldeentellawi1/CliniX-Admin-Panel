import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SwitcLightDark extends StatelessWidget {
  const SwitcLightDark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          const Icon(FontAwesomeIcons.sun),
          Transform.scale(
              scale: 0.8,
              child: Switch(
                  inactiveTrackColor: AppColor.darkyellow,
                  activeTrackColor: AppColor.selecteColor,
                  value: false,
                  onChanged: (newValue) {}))
        ],
      ),
    );
  }
}
