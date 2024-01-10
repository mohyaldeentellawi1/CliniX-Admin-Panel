import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class CategorySelect extends StatefulWidget {
  const CategorySelect({super.key});

  @override
  State<CategorySelect> createState() => _CategorySelectState();
}

class _CategorySelectState extends State<CategorySelect> {
  String? _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          height: 42,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColor.mainbackground,
            borderRadius: BorderRadius.circular(0.0),
            border: Border.all(
                color: AppColor.boxborder, style: BorderStyle.solid, width: 1),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: _dropDownValue == null
                  ? const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('- - select - -',
                          style: TextStyle(
                              color: AppColor.dark,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _dropDownValue!,
                        style: const TextStyle(
                            color: AppColor.dark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
              isExpanded: true,
              iconSize: 30.0,
              style: const TextStyle(
                  color: AppColor.dark,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              items: [
                '- - select - -',
                'Danger',
                'Success',
                'Primary',
                'Info',
                'Dark',
                'Warning'
              ].map(
                (val) {
                  return DropdownMenuItem<String>(
                    value: val,
                    child: Text(val,
                        style: const TextStyle(
                            color: AppColor.dark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  );
                },
              ).toList(),
              onChanged: (val) {
                setState(
                  () {
                    _dropDownValue = val!;
                  },
                );
              },
            ),
          )),
    );
  }
}
