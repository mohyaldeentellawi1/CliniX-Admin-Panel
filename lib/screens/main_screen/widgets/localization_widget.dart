import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/constant.dart';

class LocalizationWidget extends StatefulWidget {
  const LocalizationWidget({super.key});

  @override
  State<LocalizationWidget> createState() => _LocalizationWidgetState();
}

class _LocalizationWidgetState extends State<LocalizationWidget> {
  String dropDownValue2 = "one";
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: dropDownValue2,
        items: [
          DropdownMenuItem<String>(
            onTap: () {
              Get.updateLocale(const Locale('en', 'US'));
            },
            value: "one",
            child: Row(
              children: [
                Image.asset(
                  en,
                  fit: BoxFit.cover,
                  height: 18,
                  width: 25,
                ),
                Container(width: 10),
                const ResponsiveTextStyle(
                    text: "English",
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            onTap: () {
              Get.updateLocale(const Locale('es', 'ES'));
            },
            value: "two",
            child: Row(
              children: [
                Image.asset(
                  spanish,
                  fit: BoxFit.cover,
                  height: 18,
                  width: 25,
                ),
                Container(width: 10),
                const ResponsiveTextStyle(
                    text: "Spanish",
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            onTap: () {
              Get.updateLocale(const Locale('de', 'CH'));
            },
            value: "three",
            child: Row(
              children: [
                Image.asset(
                  german,
                  fit: BoxFit.cover,
                  height: 18,
                  width: 25,
                ),
                Container(width: 10),
                const ResponsiveTextStyle(
                    text: "German",
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            onTap: () {
              Get.updateLocale(const Locale('it', 'CH'));
            },
            value: "four",
            child: Row(
              children: [
                Image.asset(
                  italy,
                  fit: BoxFit.cover,
                  height: 18,
                  width: 25,
                ),
                Container(width: 18),
                const ResponsiveTextStyle(
                    text: "Italian",
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            onTap: () {
              Get.updateLocale(const Locale('ru', 'RU'));
            },
            value: "five",
            child: Row(
              children: [
                Image.asset(
                  rus,
                  fit: BoxFit.cover,
                  height: 18,
                  width: 25,
                ),
                Container(width: 10),
                const ResponsiveTextStyle(
                    text: "Russian",
                    fontSize: 10,
                    fontWeight: FontWeight.normal),
              ],
            ),
          ),
        ],
        onChanged: (val) {
          setState(() {
            dropDownValue2 = val!;
          });
        },
      ),
    );
  }
}
