import 'package:clinix_admin_panel/screens/travel_services_screen/widgets/travel_services_item.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_button.dart';
import '../../../core/widgets/custom_span_description.dart';

class TravelServiceBody extends StatefulWidget {
  const TravelServiceBody({super.key});

  @override
  State<TravelServiceBody> createState() => _TravelServiceBodyState();
}

class _TravelServiceBodyState extends State<TravelServiceBody> {
  Map<int, bool> isAvailableMap = {};
  Map<int, TextEditingController> controllerMap = {};
  _TravelServiceBodyState() {
    for (int i = 0; i < travelServiceList.length; i++) {
      isAvailableMap[i] = true;
      controllerMap[i] = TextEditingController();
    }
  }

  List<String> travelServiceList = [
    'International travel',
    'Local travel',
    'Local accommodation',
    'Translation services',
    'Local guide',
    'Tours and vacation services',
    'Pick up service from hotel',
    'Pick up service from airport',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                "This section is for clinics which regularly attract patients from other countries as part of their core service. (Medical tourism)."),
        const SizedBox(height: 25),
        SizedBox(
          height: height * .6,
          child: ListView.builder(
            itemCount: travelServiceList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: CustomTravelServiceItem(
                    text: travelServiceList[index],
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
