import 'dart:convert';

import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class ClinicDescriptionEditior extends StatefulWidget {
  const ClinicDescriptionEditior({super.key});

  @override
  State<ClinicDescriptionEditior> createState() =>
      _ClinicDescriptionEditiorState();
}

class _ClinicDescriptionEditiorState extends State<ClinicDescriptionEditior> {
  final QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(
                quill,
                filterQuality: FilterQuality.high,
                fit: BoxFit.scaleDown,
              ),
            ),
            const ResponsiveTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.selecteColor,
                text: 'ClinicX Editior'),
          ],
        ),
        const CustomSpanDescription(
            desc:
                'Kindly provide a detailed description of your clinic for inclusion in your brochure. Highlight the key features that set your clinic apart. Avoid including contact information such as email, phone numbers, or website addresses. Any additional formatting will be removed from this text.'),
        QuillToolbar.simple(
          configurations: QuillSimpleToolbarConfigurations(
            controller: _controller,
            customButtons: [
              QuillToolbarCustomButtonOptions(
                tooltip: 'Clear the entire text',
                icon: const Icon(Icons.delete_sweep),
                onPressed: () {
                  _controller.clear();
                },
              ),
            ],
            sharedConfigurations: const QuillSharedConfigurations(
              locale: Locale('en'),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsetsDirectional.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColor.selecteColor)),
          width: width * .5,
          height: height * .32,
          child: QuillEditor.basic(
            configurations: QuillEditorConfigurations(
                controller: _controller,
                readOnly: false,
                sharedConfigurations:
                    const QuillSharedConfigurations(locale: Locale('en'))),
          ),
        ),
        const SizedBox(height: 10),
        CustomContainerButton(
            paddingWidth: 100,
            paddingheight: 10,
            onTap: () {
              var json = jsonEncode(_controller.document.toDelta().toJson());
              print(json);
              // Save 'json' to a persistent storage (e.g., database, file, etc.)
              // You can implement the storage logic here.
            },
            buttonName: 'Save'),
      ],
    );
  }
}
