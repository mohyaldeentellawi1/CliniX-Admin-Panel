part of event_calendar;

class AppointmentEditor extends StatefulWidget {
  const AppointmentEditor({super.key});

  @override
  AppointmentEditorState createState() => AppointmentEditorState();
}

class AppointmentEditorState extends State<AppointmentEditor> {
  Widget getAppointmentEditor(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
              leading: const Icon(Icons.calendar_today),
              title: TextFormField(
                controller: TextEditingController(text: _subject),
                onChanged: (String value) {
                  _subject = value;
                },
                keyboardType: TextInputType.multiline,
                maxLines: 1,
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add Appointment...',
                ),
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1,
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
              leading: const Icon(Icons.health_and_safety),
              title: Text(
                _treatment[_selectedTreatment],
              ),
              onTap: () {
                showDialog<Widget>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return _Treatment();
                  },
                ).then((dynamic value) => setState(() {}));
              },
            ),
            const Divider(
              height: 1.0,
              thickness: 1,
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
              leading: const Icon(
                Icons.person,
                color: Colors.black87,
              ),
              title: Text(_doctor[_selectedDoctor]),
              onTap: () {
                showDialog<Widget>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return _Doctor();
                  },
                ).then((dynamic value) => setState(() {}));
              },
            ),
            const Divider(
              height: 1.0,
              thickness: 1,
            ),
            ListTile(
                contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                leading: InkWell(
                    onTap: () async {
                      final DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: _startDate,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      );
                      if (date != null && date != _startDate) {
                        setState(() {
                          final Duration difference =
                              _endDate.difference(_startDate);
                          _startDate = DateTime(date.year, date.month, date.day,
                              _startTime.hour, _startTime.minute, 0);
                          _endDate = _startDate.add(difference);
                          _endTime = TimeOfDay(
                              hour: _endDate.hour, minute: _endDate.minute);
                        });
                      }
                    },
                    child: const Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('From'),
                        ))),
                title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 7,
                        child: Text(
                            DateFormat('EEE, MMM dd yyyy').format(_startDate),
                            textAlign: TextAlign.left),
                      ),
                      Expanded(
                          flex: 3,
                          child: _isAllDay
                              ? const Text('')
                              : GestureDetector(
                                  child: Text(
                                    DateFormat('hh:mm a').format(_startDate),
                                    textAlign: TextAlign.right,
                                  ),
                                  onTap: () async {
                                    final TimeOfDay? time =
                                        await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay(
                                                hour: _startTime.hour,
                                                minute: _startTime.minute));

                                    if (time != null && time != _startTime) {
                                      setState(() {
                                        _startTime = time;
                                        final Duration difference =
                                            _endDate.difference(_startDate);
                                        _startDate = DateTime(
                                            _startDate.year,
                                            _startDate.month,
                                            _startDate.day,
                                            _startTime.hour,
                                            _startTime.minute,
                                            0);
                                        _endDate = _startDate.add(difference);
                                        _endTime = TimeOfDay(
                                            hour: _endDate.hour,
                                            minute: _endDate.minute);
                                      });
                                    }
                                  })),
                    ])),
            ListTile(
                contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                leading: InkWell(
                  child: const Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('To'),
                      )),
                  onTap: () async {
                    final DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: _endDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (date != null && date != _endDate) {
                      setState(() {
                        final Duration difference =
                            _endDate.difference(_startDate);
                        _endDate = DateTime(date.year, date.month, date.day,
                            _endTime.hour, _endTime.minute, 0);
                        if (_endDate.isBefore(_startDate)) {
                          _startDate = _endDate.subtract(difference);
                          _startTime = TimeOfDay(
                              hour: _startDate.hour, minute: _startDate.minute);
                        }
                      });
                    }
                  },
                ),
                title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 7,
                        child: Text(
                          DateFormat('EEE, MMM dd yyyy').format(_endDate),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: _isAllDay
                              ? const Text('')
                              : GestureDetector(
                                  child: Text(
                                    DateFormat('hh:mm a').format(_endDate),
                                    textAlign: TextAlign.right,
                                  ),
                                  onTap: () async {
                                    final TimeOfDay? time =
                                        await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay(
                                                hour: _endTime.hour,
                                                minute: _endTime.minute));

                                    if (time != null && time != _endTime) {
                                      setState(() {
                                        _endTime = time;
                                        final Duration difference =
                                            _endDate.difference(_startDate);
                                        _endDate = DateTime(
                                            _endDate.year,
                                            _endDate.month,
                                            _endDate.day,
                                            _endTime.hour,
                                            _endTime.minute,
                                            0);
                                        if (_endDate.isBefore(_startDate)) {
                                          _startDate =
                                              _endDate.subtract(difference);
                                          _startTime = TimeOfDay(
                                              hour: _startDate.hour,
                                              minute: _startDate.minute);
                                        }
                                      });
                                    }
                                  })),
                    ])),
            const Divider(
              height: 1.0,
              thickness: 1,
            ),
            ListTile(
                contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                leading: const Icon(
                  Icons.access_time,
                  color: Colors.black54,
                ),
                title: Row(children: <Widget>[
                  const Expanded(
                    child: Text('All-day'),
                  ),
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch.adaptive(
                            activeColor: AppColor.selecteColor,
                            value: _isAllDay,
                            onChanged: (bool value) {
                              setState(() {
                                _isAllDay = value;
                              });
                            },
                          ))),
                ])),
            const Divider(
              height: 1.0,
              thickness: 1,
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
              leading: Icon(Icons.lens,
                  color: _colorCollection[_selectedColorIndex]),
              onTap: () {
                showDialog<Widget>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return _ColorPicker();
                  },
                ).then((dynamic value) => setState(() {}));
              },
            ),
            const Divider(
              height: 1.0,
              thickness: 1,
            ),
          ],
        ));
  }

  String getTile() {
    return _subject.isEmpty ? 'New event' : _subject;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _colorCollection[_selectedColorIndex],
          title: Text(
            getTile(),
            style: const TextStyle(color: AppColor.mainbackground),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                icon: const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                onPressed: _subject == ''
                    ? () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: AppColor.mainbackground,
                              title: ListTile(
                                leading: Image.asset('assets/image/logo1.png'),
                                title: const Text('ClinicX ©'),
                                subtitle: const Text('V1.0.0'),
                                trailing:
                                    const Icon(Icons.warning_amber_outlined),
                              ),
                              content: const Text(
                                'Please Enter Event Details!',
                                style: TextStyle(color: AppColor.darkred),
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        );
                      }
                    : () {
                        final List<Meeting> meetings = <Meeting>[];
                        if (_selectedAppointment != null) {
                          _events.appointments!.removeAt(_events.appointments!
                              .indexOf(_selectedAppointment));
                          _events.notifyListeners(
                              CalendarDataSourceAction.remove,
                              <Meeting>[_selectedAppointment!]);
                        }
                        meetings.add(Meeting(
                          from: _startDate,
                          to: _endDate,
                          background: _colorCollection[_selectedColorIndex],
                          doctorName: _doctor[_selectedDoctor],
                          treatment: _treatment[_selectedTreatment],
                          isAllDay: _isAllDay,
                          title: _subject == '' ? '(No title)' : _subject,
                        ));

                        _events.appointments!.add(meetings[0]);

                        _events.notifyListeners(
                            CalendarDataSourceAction.add, meetings);
                        _selectedAppointment = null;

                        Navigator.pop(context);
                      })
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Stack(
            children: <Widget>[getAppointmentEditor(context)],
          ),
        ),
        floatingActionButton: _selectedAppointment == null
            ? const SizedBox()
            : FloatingActionButton(
                onPressed: () {
                  if (_selectedAppointment != null) {
                    _events.appointments!.removeAt(
                        _events.appointments!.indexOf(_selectedAppointment));
                    _events.notifyListeners(CalendarDataSourceAction.remove,
                        <Meeting>[_selectedAppointment!]);
                    _selectedAppointment = null;
                    Navigator.pop(context);
                  }
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.delete_outline, color: Colors.white),
              ));
  }
}
