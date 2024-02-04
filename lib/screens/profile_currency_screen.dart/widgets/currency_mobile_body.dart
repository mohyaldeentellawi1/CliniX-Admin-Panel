import 'package:clinix_admin_panel/core/utils/colors.dart';
import 'package:clinix_admin_panel/core/widgets/custom_container_button.dart';
import 'package:clinix_admin_panel/core/widgets/custom_span_description.dart';

import 'package:flutter/material.dart';

class CurrencyMobileBody extends StatefulWidget {
  const CurrencyMobileBody({super.key});

  @override
  State<CurrencyMobileBody> createState() => _CurrencyMobileBodyState();
}

class _CurrencyMobileBodyState extends State<CurrencyMobileBody> {
  Map<String, bool> currency = {
    'AUD': true,
    'BHD': true,
    'GBP': true,
    'CAD': false,
    'CLP': false,
    'CNY': false,
    'CZK': false,
    'DKK': false,
    'EUR': false,
    'HKD': false,
    'HUF': false,
    'JPY': false,
    'JOD': false,
    'KWD': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSpanDescription(
            desc:
                'In order for the treatment method section to work stably, the currency selection must be made strictly.'),
        const SizedBox(height: 25),
        GridView.builder(
          shrinkWrap: true,
          itemCount: currency.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, crossAxisSpacing: 2),
          itemBuilder: (BuildContext context, int index) {
            String key = currency.keys.elementAt(index);
            return CheckboxListTile(
              activeColor: AppColor.selecteColor,
              title: Text(key),
              value: currency[key],
              onChanged: (bool? value) {
                setState(() {
                  currency[key] = value!;
                });
              },
            );
          },
        ),
        const SizedBox(height: 10),
        CustomContainerButton(
            paddingWidth: 50,
            paddingheight: 10,
            onTap: () {},
            buttonName: 'Uplode')
      ],
    );
  }
}
