// ignore: unnecessary_library_name
library event_calendar;

import 'dart:math';

import 'package:clinix_admin_panel/controllers/theme_controller.dart';
import 'package:clinix_admin_panel/core/utils/constant.dart';
import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:clinix_admin_panel/core/widgets/main_scaffold.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../core/utils/colors.dart';

import '../widgets/column_event.dart';
part '../widgets/color_picker.dart';
part '../widgets/appointement_editior.dart';
part '../widgets/doctor.dart';
part '../widgets/treatment.dart';

class EventCalendar extends StatefulWidget {
  const EventCalendar({super.key});

  @override
  EventCalendarState createState() => EventCalendarState();
}

List<Color> _colorCollection = <Color>[];
int _selectedColorIndex = 0;
List<String> _treatment = <String>[];
List<String> _doctor = <String>[];
int _selectedTreatment = 0;
int _selectedDoctor = 0;

late DataSource _events;
Meeting? _selectedAppointment;
late DateTime _startDate;
late TimeOfDay _startTime;
late DateTime _endDate;
late TimeOfDay _endTime;
bool _isAllDay = false;
String _subject = '';

class EventCalendarState extends State<EventCalendar> {
  EventCalendarState();
  late List<Meeting> appointments;
  late List<TimeRegion> _specialTimeRegions;
  CalendarController calendarController = CalendarController();

  @override
  void initState() {
    appointments = getMeetingDetails();
    _events = DataSource(appointments);
    _selectedAppointment = null;
    _selectedColorIndex = 0;
    _selectedTreatment = 0;
    _selectedDoctor = 0;
    _subject = '';

    addSpecialRegions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MainScaffold(
      width: width,
      textL: 'Calendar',
      texti: 'ClinicX',
      textii: 'Calendar',
      webTabletViewWidget: Row(
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
                    padding: const EdgeInsetsDirectional.only(
                        top: 10.0, start: 5, end: 5),
                    child: ColumnEvent(width: width),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.all(15.0),
                    child: CalendarPhoto(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 6,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.boxborder,
                    ),
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                    padding: const EdgeInsetsDirectional.all(20.0),
                    child: getEventCalendar(_events, onCalendarTapped,
                        width: width, height: height))),
          ),
        ],
      ),
      mobileWidget: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.boxborder,
            ),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(15.0),
          child: Column(
            children: [
              ColumnEvent(width: width),
              const SizedBox(height: 50),
              const CalendarPhoto(),
              getEventCalendar(
                  width: width > 600 ? 1000 : 500,
                  height: width > 600 ? 700 : 500,
                  _events,
                  onCalendarTapped),
            ],
          ),
        ),
      ),
    );
  }

  void addSpecialRegions() {
    final DateTime date = DateTime.now();
    _specialTimeRegions = [
      TimeRegion(
        startTime: DateTime(date.year, date.month, date.day, 13, 0, 0),
        endTime: DateTime(date.year, date.month, date.day, 14, 0, 0),
        text: 'Lunch',
        recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
        enablePointerInteraction: false,
      )
    ];
  }

  Widget getEventCalendar(CalendarDataSource calendarDataSource,
      CalendarTapCallback calendarTapCallback,
      {required double width, required double height}) {
    return SizedBox(
      width: width,
      height: height,
      child: SfCalendar(
        view: CalendarView.month,
        controller: calendarController,
        allowedViews: const [
          CalendarView.month,
          CalendarView.week,
          CalendarView.day,
        ],
        dataSource: calendarDataSource,
        onTap: calendarTapCallback,
        appointmentBuilder: (context, calendarAppointmentDetails) {
          final Meeting meeting = calendarAppointmentDetails.appointments.first;
          return Container(
            color: meeting.background.withValues(alpha: 0.8),
            child: ResponsiveTextStyle(
              text: meeting.title,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          );
        },
        initialDisplayDate: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 0, 0, 0),
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
        timeSlotViewSettings: const TimeSlotViewSettings(
          minimumAppointmentDuration: Duration(minutes: 60),
        ),
        specialRegions: _specialTimeRegions,
      ),
    );
  }

  void onCalendarTapped(CalendarTapDetails calendarTapDetails) {
    if (calendarTapDetails.targetElement != CalendarElement.calendarCell &&
        calendarTapDetails.targetElement != CalendarElement.appointment) {
      return;
    }

    setState(() {
      _selectedAppointment = null;
      _isAllDay = false;
      _selectedTreatment = 0;
      _selectedDoctor = 0;
      _selectedColorIndex = 0;
      _subject = '';

      if (calendarController.view == CalendarView.month) {
        calendarController.view = CalendarView.day;
      } else {
        if (calendarTapDetails.appointments != null &&
            calendarTapDetails.appointments!.length == 1) {
          final Meeting meetingDetails = calendarTapDetails.appointments![0];
          _startDate = meetingDetails.from;
          _endDate = meetingDetails.to;
          _isAllDay = meetingDetails.isAllDay;
          _subject =
              meetingDetails.title == '(No title)' ? '' : meetingDetails.title;
          _selectedColorIndex =
              _colorCollection.indexOf(meetingDetails.background);
          _selectedTreatment = _treatment.indexOf(meetingDetails.treatment);
          _selectedDoctor = _doctor.indexOf(meetingDetails.doctorName);
          _selectedAppointment = meetingDetails;
        } else {
          final DateTime date = calendarTapDetails.date!;
          _startDate = date;
          _endDate = date.add(const Duration(hours: 1));
        }
        _startTime =
            TimeOfDay(hour: _startDate.hour, minute: _startDate.minute);
        _endTime = TimeOfDay(hour: _endDate.hour, minute: _endDate.minute);
        Navigator.push<Widget>(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (BuildContext context) => const AppointmentEditor()));
      }
    });
  }

  List<Meeting> getMeetingDetails() {
    final List<Meeting> meetingCollection = <Meeting>[];

    _colorCollection = <Color>[];
    _colorCollection.add(const Color(0xff003366));
    _colorCollection.add(const Color(0xFF0F8644));
    _colorCollection.add(const Color(0xFF8B1FA9));
    _colorCollection.add(const Color(0xFFD20100));
    _colorCollection.add(const Color(0xFFFC571D));
    _colorCollection.add(const Color(0xFF85461E));
    _colorCollection.add(const Color(0xFFFF00FF));
    _colorCollection.add(const Color(0xFF3D4FB5));
    _colorCollection.add(const Color(0xFFE47C73));
    _colorCollection.add(const Color(0xFF636363));
    _treatment = <String>[];
    _treatment.add('Abdominal Etching');
    _treatment.add('Areola Reduction');
    _treatment.add('Brazilian Butt Lift');
    _treatment.add('Full Body Lift');
    _doctor = <String>[];
    _doctor.add('Dr Burak Pasinlioğlu,Surgeon');
    _doctor.add('Mrs Fiona Kurt,Administration Manager');
    _doctor.add('Dr Ezgi Özkur,Doctor');
    final DateTime today = DateTime.now();
    final Random random = Random();
    for (int month = -1; month < 2; month++) {
      for (int day = -5; day < 5; day++) {
        for (int hour = 9; hour < 18; hour += 5) {
          meetingCollection.add(Meeting(
            title: '',
            from: today
                .add(Duration(days: (month * 30) + day))
                .add(Duration(hours: hour)),
            to: today
                .add(Duration(days: (month * 30) + day))
                .add(Duration(hours: hour + 2)),
            background: _colorCollection[random.nextInt(9)],
            treatment: _treatment[random.nextInt(4)],
            doctorName: _doctor[random.nextInt(3)],
            isAllDay: false,
          ));
        }
      }
    }

    return meetingCollection;
  }
}

class DataSource extends CalendarDataSource {
  DataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  bool isAllDay(int index) => appointments![index].isAllDay;

  @override
  Color getColor(int index) => appointments![index].background;

  @override
  DateTime getStartTime(int index) => appointments![index].from;

  @override
  DateTime getEndTime(int index) => appointments![index].to;

  @override
  String getSubject(int index) => appointments![index].title;
}

class Meeting {
  Meeting(
      {required this.from,
      required this.to,
      this.background = AppColor.selecteColor,
      this.isAllDay = false,
      this.treatment = '',
      this.doctorName = '',
      this.title = ''});

  final DateTime from;
  final DateTime to;
  final Color background;
  final bool isAllDay;
  final String treatment;
  final String doctorName;
  final String title;
}
