import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';
import 'package:clinix_admin_panel/screens/profile_premises_screen/widgets/premises_item.dart';
import 'package:flutter/material.dart';

class PremisesBody extends StatefulWidget {
  const PremisesBody({super.key});

  @override
  State<PremisesBody> createState() => _PremisesBodyState();
}

class _PremisesBodyState extends State<PremisesBody> {
  Map<int, bool> isAvailableMap = {};
  Map<int, TextEditingController> controllerMap = {};
  _PremisesBodyState() {
    for (int i = 0; i < premisesList.length; i++) {
      isAvailableMap[i] = true;
      controllerMap[i] = TextEditingController();
    }
  }

  List<String> premisesList = [
    'Parking',
    'Accessible to disabled people',
    'Public transport access',
    'Wheelchair accessible toilet',
    'Access without steps',
    'Disabled parking',
    'Patient bathroom',
    'Wireless access',
    'On-site pharmacy',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                "This section is for details of your clinic's premises. You should tick yes for those that apply to your clinic. If you are unsure of a service, you may tick neither and return to this list later."),
        const SizedBox(height: 25),
        SizedBox(
          height: height * .6,
          child: ListView.builder(
            itemCount: premisesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: CustomPremisesItem(
                    text: premisesList[index],
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
        CustomContainerButton(onTap: () {}, buttonName: 'Update')
      ],
    );
  }
}
