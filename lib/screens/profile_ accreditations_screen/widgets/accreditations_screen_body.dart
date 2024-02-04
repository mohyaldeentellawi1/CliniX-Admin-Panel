import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';

import 'package:clinix_admin_panel/screens/profile_%20accreditations_screen/widgets/custom_accreditations_item.dart';
import 'package:flutter/material.dart';

class AccreditationsScreenBody extends StatefulWidget {
  const AccreditationsScreenBody({super.key});

  @override
  State<AccreditationsScreenBody> createState() =>
      _AccreditationsScreenBodyState();
}

class _AccreditationsScreenBodyState extends State<AccreditationsScreenBody> {
  List<String> accreditaionsList = [
    'Turkey',
    'International',
    'Albania',
    'Argentina',
    'Australia',
    'Austria',
    'Belgium',
    'Bosnia and Herzegovina',
    'Brazil',
    'Bulgaria',
    'Canada',
    'Chile',
    'Colombia',
    'Costa Rica',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Dominican Republic',
    'Ecuador',
    'Egypt',
    'Finland',
    'France',
    'Germany',
    'Greece',
    'Haiti',
    'Hong Kong SAR',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Ireland',
    'Israel',
    'Italy',
    'Japan',
    'Latvia',
    'Lithuania',
    'Luxembourg',
    'Malaysia',
    'Malta',
    'Mexico',
    'Netherlands',
    'New Zealand',
    'North Macedonia',
    'Norway',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'Serbia',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'South Africa',
    'Spain',
    'Saint Lucia',
    'Sweden',
    'Switzerland',
    'Thailand',
    'United Kingdom',
    'Ukraine',
    'United Arab Emirates',
    'United States',
    'Zambia'
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomSpanDescription(
                desc:
                    'Select the accreditations which apply to your clinic and staff'),
            width > 600 ? const SizedBox(width: 40) : const SizedBox(width: 0),
            width > 800
                ? CustomContainerButton(
                    paddingWidth: 100,
                    paddingheight: 10,
                    onTap: () {},
                    buttonName: 'Update')
                : CustomContainerButton(onTap: () {}, buttonName: 'Update')
          ],
        ),
        const SizedBox(height: 25),
        SizedBox(
          height: height * .65,
          child: ListView.builder(
            itemCount: accreditaionsList.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomAccreditationItem(text: accreditaionsList[index]);
            },
          ),
        )
      ],
    );
  }
}
