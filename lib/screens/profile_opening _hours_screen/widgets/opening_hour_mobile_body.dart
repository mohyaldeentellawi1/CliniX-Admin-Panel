import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_button.dart';
import '../../../core/widgets/custom_span_description.dart';
import 'custom_opening_closing_button.dart';

class OpeningHoursMobileBody extends StatefulWidget {
  const OpeningHoursMobileBody({super.key});

  @override
  State<OpeningHoursMobileBody> createState() => _OpeningHoursMobileBodyState();
}

class _OpeningHoursMobileBodyState extends State<OpeningHoursMobileBody> {
  Map<String, TimeOfDay?> openingTimes = {
    'Monday': null,
    'Tuesday': null,
    'Wednesday': null,
    'Thursday': null,
    'Friday': null,
    'Saturday': null,
    'Sunday': null,
  };
  Map<String, TimeOfDay?> closingTimes = {
    'Monday': null,
    'Tuesday': null,
    'Wednesday': null,
    'Thursday': null,
    'Friday': null,
    'Saturday': null,
    'Sunday': null,
  };

  Future<void> _selectOpeningTime(BuildContext context, String day) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: openingTimes[day] ?? TimeOfDay.now(),
    );

    if (time != null) {
      setState(() {
        openingTimes[day] = time;
      });
    }
  }

  Future<void> _selectClosingTime(BuildContext context, String day) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: closingTimes[day] ?? TimeOfDay.now(),
    );

    if (time != null) {
      setState(() {
        closingTimes[day] = time;
      });
    }
  }

  Widget dayWithStar(String day) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '$day ',
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          const TextSpan(
            text: '*',
            style: TextStyle(color: Colors.red, fontSize: 16, height: 2),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSpanDescription(
              desc:
                  'Please indicate the opening and closing hours of your clinic.'),
          const SizedBox(height: 15),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(0.5),
              3: FlexColumnWidth(1),
            },
            children: openingTimes.keys.map((day) {
              return TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: dayWithStar(day),
                  ),
                  CustomOpeningClosingButton(
                    onPressed: () => _selectOpeningTime(context, day),
                    buttonName: openingTimes[day] != null
                        ? openingTimes[day]!.format(context)
                        : 'opening',
                  ),
                  const SizedBox(),
                  CustomOpeningClosingButton(
                    onPressed: () => _selectClosingTime(context, day),
                    buttonName: closingTimes[day] != null
                        ? closingTimes[day]!.format(context)
                        : 'closing',
                  ),
                ],
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 100),
            child: CustomContainerButton(onTap: () {}, buttonName: 'Update'),
          )
        ],
      ),
    );
  }
}
