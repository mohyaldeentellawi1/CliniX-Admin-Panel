import 'package:clinix_admin_panel/screens/calender_screen/view/calender_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../core/utils/colors.dart';
import 'category_select.dart';
import 'custom_dialog_button.dart';

class FullCalendar extends StatelessWidget {
  const FullCalendar({super.key, required this.height, required this.width});

  final double height;
  final double width;

  // final CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (width > 600)
          const RowCalendarButtons()
        else
          const ColumnCalendarButton(),
        SizedBox(
          height: height,
          width: width,
          child: SfCalendar(
            onTap: (CalendarTapDetails details) {
              dialogBox(context);
            },
            firstDayOfWeek: 1,
            dataSource: MeetingDataSource(getAppointment()),
            monthViewSettings: const MonthViewSettings(
                appointmentDisplayMode:
                    MonthAppointmentDisplayMode.appointment),
            // allowAppointmentResize: true,
            view: calendarView,
            controller: calendarController,
            // todayHighlightColor: Colors.blue,
            // timeSlotViewSettings: TimeSlotViewSettings(
            //   startHour: 0,
            //   endHour: 24,
            //   timeRulerSize: 30,
            //   allDayPanelColor: Colors.blueAccent,

            //   // numberOfDaysInView: -1,
            //   nonWorkingDays: <int>[DateTime.friday],
          ),
        ),
      ],
    );
  }

  Future<dynamic> dialogBox(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        final formKey = GlobalKey<FormState>();
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            elevation: 0,
            content: width > 365
                ? BigScreenContent(width: width, formKey: formKey)
                : SmallScreenContent(width: width, formKey: formKey));
      },
    );
  }
}

class SmallScreenContent extends StatelessWidget {
  const SmallScreenContent(
      {super.key, required this.width, required this.formKey});
  final double width;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width > 400 ? 600 : 10,
        color: Colors.transparent,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  const Text(
                    "Add Event",
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              Container(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Event Name",
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                // child: BasicTextFieldonly(
                //   hintText: "Insert Event Name",
                //   initialValue: "",
                //   obscure: false,
                // ),
              ),
              Container(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColor.black,
                      fontSize: 15),
                ),
              ),
              const CategorySelect(),
              Container(height: 15),
              Row(
                children: [
                  CustomDialogButton(
                      width: width,
                      onPressed: () {},
                      shadowColor: AppColor.darkred,
                      backgroundColor: AppColor.darkred,
                      buttonName: 'Delete',
                      textColor: AppColor.mainbackground),
                  const Spacer(),
                  Column(
                    children: [
                      CustomDialogButton(
                          width: width,
                          onPressed: () {},
                          shadowColor: const Color.fromARGB(255, 216, 216, 222),
                          backgroundColor:
                              const Color.fromARGB(255, 216, 216, 222),
                          buttonName: 'Close',
                          textColor: AppColor.black),
                      CustomDialogButton(
                          width: width,
                          onPressed: () {
                            //                   _events?.appointments!.add(app);
                            // _events?.notifyListeners(
                            //     CalendarDataSourceAction.add, <Appointment>[app]);
                          },
                          shadowColor: AppColor.background,
                          backgroundColor: AppColor.background,
                          buttonName: 'Save',
                          textColor: AppColor.mainbackground),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class BigScreenContent extends StatelessWidget {
  const BigScreenContent(
      {super.key, required this.width, required this.formKey});
  final double width;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width > 400 ? 600 : 10,
        color: Colors.transparent,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  const Text(
                    "Add Event",
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.close,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              Container(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Event Name",
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                // child: BasicTextFieldonly(
                //   hintText: "Insert Event Name",
                //   initialValue: "",
                //   obscure: false,
                // ),
              ),
              Container(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColor.black,
                      fontSize: 15),
                ),
              ),
              const CategorySelect(),
              Container(height: 15),
              width > 500
                  ? Row(
                      children: [
                        CustomDialogButton(
                            width: width,
                            onPressed: () {},
                            shadowColor: AppColor.darkred,
                            backgroundColor: AppColor.darkred,
                            buttonName: 'Delete',
                            textColor: AppColor.mainbackground),
                        const Spacer(),
                        CustomDialogButton(
                            width: width,
                            onPressed: () {},
                            shadowColor:
                                const Color.fromARGB(255, 216, 216, 222),
                            backgroundColor:
                                const Color.fromARGB(255, 216, 216, 222),
                            buttonName: 'Close',
                            textColor: AppColor.black),
                        Container(width: 5),
                        CustomDialogButton(
                            width: width,
                            onPressed: () {
                              //                   _events?.appointments!.add(app);
                              // _events?.notifyListeners(
                              //     CalendarDataSourceAction.add, <Appointment>[app]);
                            },
                            shadowColor: AppColor.background,
                            backgroundColor: AppColor.background,
                            buttonName: 'Save',
                            textColor: AppColor.mainbackground),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: CustomDialogButton(
                                width: width,
                                onPressed: () {},
                                shadowColor: AppColor.darkred,
                                backgroundColor: AppColor.darkred,
                                buttonName: 'Delete',
                                textColor: AppColor.mainbackground)),
                        const Spacer(flex: 1),
                        Expanded(
                            flex: 2,
                            child: CustomDialogButton(
                                width: width,
                                onPressed: () {},
                                shadowColor:
                                    const Color.fromARGB(255, 216, 216, 222),
                                backgroundColor:
                                    const Color.fromARGB(255, 216, 216, 222),
                                buttonName: 'Close',
                                textColor: AppColor.black)),
                        Container(width: 5),
                        Expanded(
                            flex: 2,
                            child: CustomDialogButton(
                                width: width,
                                onPressed: () {
                                  //                   _events?.appointments!.add(app);
                                  // _events?.notifyListeners(
                                  //     CalendarDataSourceAction.add, <Appointment>[app]);
                                },
                                shadowColor: AppColor.background,
                                backgroundColor: AppColor.background,
                                buttonName: 'Save',
                                textColor: AppColor.mainbackground)),
                      ],
                    ),
            ],
          ),
        ));
  }
}
