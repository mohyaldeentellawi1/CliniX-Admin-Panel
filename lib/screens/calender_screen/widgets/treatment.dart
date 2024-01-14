part of event_calendar;

class _Treatment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TreatmentState();
  }
}

class _TreatmentState extends State<_Treatment> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Select Treatment'),
        content: DropdownButton<int>(
          value: _selectedTreatment,
          onChanged: (int? newValue) {
            setState(() {
              _selectedTreatment = newValue!;
            });
            Navigator.pop(context);
          },
          items: List<DropdownMenuItem<int>>.generate(
            _treatment.length,
            (int index) => DropdownMenuItem<int>(
              value: index,
              child: Row(
                children: <Widget>[
                  Icon(
                    index == _selectedTreatment
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                  ),
                  const SizedBox(width: 8),
                  Text(_treatment[index]),
                ],
              ),
            ),
          ),
        ));
  }
}
