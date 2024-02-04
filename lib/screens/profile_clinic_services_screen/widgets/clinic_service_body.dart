import 'package:clinix_admin_panel/screens/profile_clinic_services_screen/widgets/service_item.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_button.dart';
import '../../../core/widgets/custom_span_description.dart';

class ClinicServiceBody extends StatefulWidget {
  const ClinicServiceBody({super.key});

  @override
  State<ClinicServiceBody> createState() => _ClinicServiceBodyState();
}

class _ClinicServiceBodyState extends State<ClinicServiceBody> {
  Map<int, bool> isAvailableMap = {};
  Map<int, TextEditingController> controllerMap = {};
  _ClinicServiceBodyState() {
    for (int i = 0; i < serviceList.length; i++) {
      isAvailableMap[i] = true;
      controllerMap[i] = TextEditingController();
    }
  }

  List<String> serviceList = [
    'Emergency service',
    'Text message reminders',
    'Home visits',
    'Open 24 hours',
    'Open weekends',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                "Please tick all the patient services which you offer. Please tick no for any you do not offer. If you are unsure of a service, you may tick neither and return to this list later."),
        const SizedBox(height: 25),
        SizedBox(
          height: height * .5,
          child: ListView.builder(
            itemCount: serviceList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: CustomServiceItem(
                    text: serviceList[index],
                    isAvilable: isAvailableMap[index]!,
                    onChanged: (newValue) {
                      setState(() {
                        isAvailableMap[index] = newValue;
                      });
                    },
                    controller: controllerMap[index]!,
                    width: width * .35),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        CustomContainerButton(
            paddingWidth: 50,
            paddingheight: 10,
            onTap: () {},
            buttonName: 'Update')
      ],
    );
  }
}
