part of event_calendar;

class _Doctor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DoctorState();
  }
}

class _DoctorState extends State<_Doctor> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Select Doctor'),
        content: DropdownButton<int>(
          value: _selectedDoctor,
          onChanged: (int? newValue) {
            setState(() {
              _selectedDoctor = newValue!;
            });
            Navigator.pop(context);
          },
          items: List<DropdownMenuItem<int>>.generate(
            _doctor.length,
            (int index) => DropdownMenuItem<int>(
              value: index,
              child: Row(
                children: <Widget>[
                  Icon(
                    index == _selectedDoctor
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                  ),
                  const SizedBox(width: 8),
                  Text(_doctor[index]),
                ],
              ),
            ),
          ),
        ));
  }
}
/*
SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: _doctor.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: Icon(
                  index == _selectedDoctor
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                ),
                title: Text(_doctor[index]),
                onTap: () {
                  setState(() {
                    _selectedDoctor = index;
                  });

                  // ignore: always_specify_types
                  Future.delayed(const Duration(milliseconds: 200), () {
                    // When task is over, close the dialog
                    Navigator.pop(context);
                  });
                },
              );
            },
          ))


 */