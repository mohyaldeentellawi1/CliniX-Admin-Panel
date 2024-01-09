import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/colors.dart';

class LocalizationWidget extends StatefulWidget {
  const LocalizationWidget({super.key});

  @override
  State<LocalizationWidget> createState() => _LocalizationWidgetState();
}

class _LocalizationWidgetState extends State<LocalizationWidget> {
  String dropDownValue2 = "one";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: Container(),
          // underline: Container(),
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
                    "assets/image/flags/us.jpg",
                    fit: BoxFit.cover,
                    height: 18,
                    width: 25,
                  ),
                  Container(width: 10),
                  const Text(
                    "English",
                    style: TextStyle(fontSize: 13, color: AppColor.black),
                  ),
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
                    "assets/image/flags/spain.jpg",
                    fit: BoxFit.cover,
                    height: 18,
                    width: 25,
                  ),
                  Container(width: 10),
                  const Text(
                    "Spanish",
                    style: TextStyle(fontSize: 13, color: AppColor.black),
                  ),
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
                    "assets/image/flags/germany.jpg",
                    fit: BoxFit.cover,
                    height: 18,
                    width: 25,
                  ),
                  Container(width: 10),
                  const Text(
                    "German",
                    style: TextStyle(fontSize: 13, color: AppColor.black),
                  ),
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
                    "assets/image/flags/italy.jpg",
                    fit: BoxFit.cover,
                    height: 18,
                    width: 25,
                  ),
                  Container(width: 18),
                  const Text(
                    "Italian",
                    style: TextStyle(fontSize: 13, color: AppColor.black),
                  ),
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
                    "assets/image/flags/russia.jpg",
                    fit: BoxFit.cover,
                    height: 18,
                    width: 25,
                  ),
                  Container(width: 10),
                  const Text(
                    "Russian",
                    style: TextStyle(fontSize: 13, color: AppColor.black),
                  ),
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
      ),
    );
  }
}
