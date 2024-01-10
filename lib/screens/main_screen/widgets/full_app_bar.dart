import 'package:clinix_admin_panel/screens/main_screen/widgets/profil_in_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/colors.dart';
import 'dark_light_switch.dart';
import 'localization_widget.dart';
import 'notification_app_bar_button.dart';

class FullAppBar extends StatelessWidget {
  const FullAppBar(
      {super.key,
      required this.width,
      required this.condition,
      required this.onTap});
  final double width;
  final bool condition;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: AppColor.boxborder))),
            height: 72,
            // width: 400,
            child: Row(
              children: [
                Container(width: 15),
                condition
                    ? InkWell(
                        onTap: () {
                          onTap();
                        },
                        child: const Icon(Icons.menu),
                      )
                    : Container(),
                Container(width: 15),
                if (width > 650)
                  SizedBox(
                    height: 40,
                    width: 223,
                    child: TextFormField(
                        decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: "search...",
                      hintStyle:
                          const TextStyle(fontSize: 14, color: AppColor.black),
                      fillColor: AppColor.textfiledcolor,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(
                            right: 6,
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: AppColor.searchbackground,
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child:
                              SvgPicture.asset("assets/svg/topbar_search.svg"),
                        ),
                      ),
                    )),
                  ),
                const Spacer(),
                const LocalizationWidget(), // for language change
                Container(width: 10),
                const SwitcLightDark(),
                NotificationButton(width: width), // for notifications
                Container(width: 10),
                ProfileInAppBar(width: width),
                Container(width: width > 1200 ? 35 : 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
