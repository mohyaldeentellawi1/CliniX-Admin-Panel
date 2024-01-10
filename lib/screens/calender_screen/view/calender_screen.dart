// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, non_constant_identifier_names, unused_field, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';
import 'package:clinix_admin_panel/screens/calender_screen/widgets/column_event_and_new_event.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../../core/utils/colors.dart';
import '../widgets/full_calendar_body.dart';

// import '../../Forms/basic_elements_container/textaual.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

CalendarView calendarView = CalendarView.month;
CalendarController calendarController = CalendarController();

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return MainScaffold(
        width: width,
        textL: 'Calendar',
        texti: 'ClinicX',
        textii: 'Calendar',
        webTabletViewWidget: LayoutBuilder(builder: (context, constrain) {
          return Container(
            color: AppColor.mainbackground,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.boxborder,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 5, right: 5),
                          child: ColumnEvent(width: width),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CalendarPhoto(),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(width: 20),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.boxborder,
                        ),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FullCalendar(
                        height: height,
                        width: width,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        mobileWidget: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.boxborder,
              ),
              borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ColumnEvent(width: width),
                Container(height: 50),
                CalendarPhoto(),
                FullCalendar(
                  width: width > 600 ? 1000 : 500,
                  height: width > 600 ? 700 : 500,
                ),
              ],
            ),
          ),
        ));
  }
}

List<Appointment> getAppointment() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(
    today.year,
    today.month,
    today.day,
  );
  final DateTime endTime = startTime.add(Duration(hours: 23));

  meetings.add(
    Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: "Conference",
      color: Colors.blue,
      // recurrenceRule: 'FREQ=DAILY;COUNT=10',
    ),
  );

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}

class RowCalendarButtons extends StatefulWidget {
  const RowCalendarButtons({
    super.key,
  });

  @override
  State<RowCalendarButtons> createState() => _RowCalendarButtonsState();
}

class _RowCalendarButtonsState extends State<RowCalendarButtons> {
  final CalendarController _calendarController = CalendarController();

  @override
  initState() {
    _calendarController.displayDate = DateTime(2022, 02, 05);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColor.searchbackground,
              borderRadius: BorderRadius.circular(5)),
          height: 37,
          width: 68,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  calendarController.backward!();
                },
                child: Icon(
                  Icons.chevron_left_sharp,
                  color: AppColor.mainbackground,
                ),
              ),
              InkWell(
                onTap: () {
                  calendarController.forward!();
                },
                child: Icon(
                  Icons.chevron_right_sharp,
                  color: AppColor.mainbackground,
                ),
              ),
            ],
          ),
        ),
        // Container(width: 15),
        // Container(
        //   height: 37,
        //   width: 80,
        //   child: ElevatedButton(
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(
        //         AppColor.searchbackground,
        //       ),
        //       shape: MaterialStateProperty.all(
        //         RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(3.0),
        //         ),
        //       ),
        //     ),
        //     onPressed: () {},
        //     child: Text(
        //       "Today",
        //       style: TextStyle(color: AppColor.mainbackground),
        //     ),
        //   ),
        // ),
        Spacer(),
        // Text(
        //   "Today",
        // ),
        // Spacer(),
        Container(
          decoration: BoxDecoration(
              color: AppColor.searchbackground,
              borderRadius: BorderRadius.circular(5)),
          height: 37,
          width: 175,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    calendarView = CalendarView.month;
                    calendarController.view = calendarView;
                  });
                },
                child: Container(
                  color: calendarView == CalendarView.month
                      ? AppColor.weekeds
                      : AppColor.searchbackground,
                  width: 58,
                  height: 37,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Month",
                      style: TextStyle(color: AppColor.mainbackground),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    calendarView = CalendarView.week;
                    calendarController.view = calendarView;
                  });
                },
                child: Container(
                  color: calendarView == CalendarView.week
                      ? AppColor.weekeds
                      : AppColor.searchbackground,
                  width: 58,
                  height: 37,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Week",
                      style: TextStyle(color: AppColor.mainbackground),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    calendarView = CalendarView.day;
                    calendarController.view = calendarView;
                  });
                },
                child: Container(
                  color: calendarView == CalendarView.day
                      ? AppColor.weekeds
                      : AppColor.searchbackground,
                  width: 58,
                  height: 37,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Day",
                      style: TextStyle(color: AppColor.mainbackground),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ColumnCalendarButton extends StatefulWidget {
  const ColumnCalendarButton({
    super.key,
  });

  @override
  State<ColumnCalendarButton> createState() => _ColumnCalendarButtonState();
}

class _ColumnCalendarButtonState extends State<ColumnCalendarButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColor.searchbackground,
              borderRadius: BorderRadius.circular(5)),
          height: 37,
          width: 68,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  calendarController.backward!();
                },
                child: Icon(
                  Icons.chevron_left_sharp,
                  color: AppColor.mainbackground,
                ),
              ),
              InkWell(
                onTap: () {
                  calendarController.forward!();
                },
                child: Icon(
                  Icons.chevron_right_sharp,
                  color: AppColor.mainbackground,
                ),
              ),
            ],
          ),
        ),
        // Container(height: 15),
        // Text(
        //   "Today",
        // ),
        Container(height: 15),
        Container(
          decoration: BoxDecoration(
              color: AppColor.searchbackground,
              borderRadius: BorderRadius.circular(5)),
          height: 37,
          width: 175,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    calendarView = CalendarView.month;
                    calendarController.view = calendarView;
                  });
                },
                child: Container(
                  color: calendarView == CalendarView.month
                      ? AppColor.weekeds
                      : AppColor.searchbackground,
                  width: 58,
                  height: 37,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Month",
                      style: TextStyle(color: AppColor.mainbackground),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    calendarView = CalendarView.week;
                    calendarController.view = calendarView;
                  });
                },
                child: Container(
                  color: calendarView == CalendarView.week
                      ? AppColor.weekeds
                      : AppColor.searchbackground,
                  width: 58,
                  height: 37,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Week",
                      style: TextStyle(color: AppColor.mainbackground),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    calendarView = CalendarView.day;
                    calendarController.view = calendarView;
                  });
                },
                child: Container(
                  color: calendarView == CalendarView.day
                      ? AppColor.weekeds
                      : AppColor.searchbackground,
                  width: 58,
                  height: 37,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Day",
                      style: TextStyle(
                        color: AppColor.mainbackground,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
