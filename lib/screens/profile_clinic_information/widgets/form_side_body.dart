import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/data/contact_item_dummy_data.dart';

import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/text_style.dart';

class FormSideBody extends StatefulWidget {
  const FormSideBody({super.key});

  @override
  State<FormSideBody> createState() => _FormSideBodyState();
}

class _FormSideBodyState extends State<FormSideBody> {
  TextEditingController clinicNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool _clinicStatus = false;

  @override
  void initState() {
    super.initState();
    emailController.text = contactList.first.email;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomTextFeild(
                width: width * .2,
                labelText: 'Clinic Name',
                controller: clinicNameController,
                keyboardType: TextInputType.text),
            const SizedBox(width: 10),
            CustomContainerButton(onTap: () {}, buttonName: 'Change')
          ],
        ),
        const SizedBox(height: 10),
        CustomTextFeild(
            width: width * .2,
            labelText: 'Adress',
            controller: clinicNameController,
            keyboardType: TextInputType.text),
        const SizedBox(height: 10),
        Row(
          children: [
            CustomTextFeild(
                width: width * .2,
                labelText: 'City',
                controller: clinicNameController,
                keyboardType: TextInputType.text),
            const SizedBox(width: 10),
            CustomTextFeild(
                width: width * .2,
                labelText: 'State',
                controller: clinicNameController,
                keyboardType: TextInputType.text),
          ],
        ),
        const SizedBox(height: 10),
        CustomTextFeild(
            width: width * .2,
            labelText: 'Zip/postal code',
            controller: clinicNameController,
            keyboardType: TextInputType.number),
        const SizedBox(height: 10),
        Row(
          children: [
            CustomTextFeild(
                width: width * .2,
                labelText: 'mobile',
                controller: clinicNameController,
                keyboardType: TextInputType.text),
            const SizedBox(width: 10),
            CustomTextFeild(
                width: width * .2,
                labelText: 'Mobile',
                controller: clinicNameController,
                keyboardType: TextInputType.text),
            const SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 10),
        CustomTextFeild(
            width: width * .22,
            labelText: 'Email',
            controller: emailController,
            keyboardType: TextInputType.text),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ResponsiveTextStyle(
              text: 'Fake Clinic',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColor.darkred,
            ),
            Transform.scale(
              scale: 0.9,
              child: Switch.adaptive(
                  inactiveTrackColor: AppColor.darkred,
                  activeColor: AppColor.darkGreen,
                  value: _clinicStatus,
                  onChanged: (bool newStatus) {
                    setState(() {
                      _clinicStatus = newStatus;
                    });
                  }),
            ),
            const ResponsiveTextStyle(
              text: 'Real Clinic',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColor.darkGreen,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 50),
            CustomContainerButton(
              paddingWidth: 100,
              paddingheight: 10,
              onTap: () {},
              buttonName: 'Save',
            ),
          ],
        )
      ],
    );
  }
}


/*
DropdownButton<int>(
          underline: const SizedBox(),
          value: _selectedEmail,
          hint: const Text('Select Email'),
          onChanged: (int? newValue) {
            setState(() {
              _selectedEmail = newValue!;
            });
          },
          items: List<DropdownMenuItem<int>>.generate(
            contactList.length,
            (int index) => DropdownMenuItem<int>(
              value: index,
              child: Row(
                children: <Widget>[
                  Icon(
                    index == _selectedEmail
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                  ),
                  const SizedBox(width: 8),
                  Text(contactList[index].email),
                ],
              ),
            ),
          ),
        ),

 */