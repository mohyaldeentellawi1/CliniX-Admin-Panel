import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/colors.dart';

class ColumnEvent extends StatelessWidget {
  const ColumnEvent({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
      child: Column(
        children: [
          Container(height: 20),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text("click in the calendar To Select Event")),
          Container(height: 10),
          EventList(
            backgorund: AppColor.lightblack,
            textanddot: AppColor.lightblack.withValues(alpha: 0.6),
            text: 'Follow up',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.lightdark.withValues(alpha: 0.5),
            textanddot: AppColor.lightdark,
            text: 'Waiting',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkyellow.withValues(alpha: .39),
            textanddot: AppColor.darkyellow,
            text: 'Booked',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkred.withValues(alpha: .39),
            textanddot: AppColor.darkred,
            text: 'Treated',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkblack.withValues(alpha: .39),
            textanddot: AppColor.dark,
            text: 'No Show',
          ),
          Container(height: 5),
          EventList(
            backgorund: AppColor.darkyellow.withValues(alpha: .39),
            textanddot: AppColor.darkblack,
            text: 'Not Interested',
          ),
        ],
      ),
    );
  }
}

class EventList extends StatelessWidget {
  final Color backgorund;
  final Color textanddot;
  final String text;

  const EventList({
    super.key,
    required this.backgorund,
    required this.textanddot,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgorund,
      height: 30,
      child: Row(
        children: [
          Container(width: 15),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: textanddot,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13,
                overflow: TextOverflow.clip,
                color: textanddot,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CalendarPhoto extends StatelessWidget {
  const CalendarPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/svg/calendar.svg");
  }
}
