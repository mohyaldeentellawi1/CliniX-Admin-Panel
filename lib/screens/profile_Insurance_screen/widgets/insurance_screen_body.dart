import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:clinix_admin_panel/screens/profile_Insurance_screen/widgets/insurance_item.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_button.dart';

class InsuranceScreenBody extends StatefulWidget {
  const InsuranceScreenBody({super.key});

  @override
  State<InsuranceScreenBody> createState() => _InsuranceScreenBodyState();
}

class _InsuranceScreenBodyState extends State<InsuranceScreenBody> {
  Map<int, bool> isAvailableMap = {};
  Map<int, TextEditingController> controllerMap = {};
  _InsuranceScreenBodyState() {
    for (int i = 0; i < insuranceList.length; i++) {
      isAvailableMap[i] = true;
      controllerMap[i] = TextEditingController();
    }
  }
  List<String> insuranceList = [
    'Private Patients Welcome',
    'Public Health Insurance',
    'Dental Plans Accepted',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                'Please tick all the Insurances which you accept. Please tick no for any you do not accept. If you are unsure of a Insurance, you may tick neither and return to this list later.'),
        const SizedBox(height: 25),
        SizedBox(
          height: height * .4,
          child: ListView.builder(
            itemCount: insuranceList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: CustomInsuranceItem(
                    text: insuranceList[index],
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
        CustomContainerButton(onTap: () {}, buttonName: 'Update'),
        SizedBox(height: height * .15)
      ],
    );
  }
}
