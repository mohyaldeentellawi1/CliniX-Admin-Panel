import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';

import 'package:clinix_admin_panel/screens/profile_clinic_information/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class FormSideBody extends StatefulWidget {
  const FormSideBody({super.key});

  @override
  State<FormSideBody> createState() => _FormSideBodyState();
}

class _FormSideBodyState extends State<FormSideBody> {
  TextEditingController clinicNameController = TextEditingController();
  bool _isTouched = false;

  void _handleHover(bool isHovering) {
    setState(() {
      _isTouched = isHovering;
    });
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
            CustomContainerButton(
                onTap: () {},
                onHover: _handleHover,
                isTouched: _isTouched,
                buttonName: 'Change')
          ],
        ),
        const SizedBox(height: 10),
        CustomTextFeild(
            width: width * .2,
            labelText: 'Adress Line 1',
            controller: clinicNameController,
            keyboardType: TextInputType.text),
        const SizedBox(height: 10),
        CustomTextFeild(
            width: width * .2,
            labelText: 'Adress Line 2',
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
          ],
        ),
      ],
    );
  }
}
