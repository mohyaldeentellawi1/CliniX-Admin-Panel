part of '../view/calendar.dart';

class _ColorPicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ColorPickerState();
  }
}

class _ColorPickerState extends State<_ColorPicker> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Color'),
      content: DropdownButton<int>(
        isExpanded: true,
        underline: const SizedBox(),
        value: _selectedColorIndex,
        onChanged: (int? newValue) {
          setState(() {
            _selectedColorIndex = newValue!;
          });
          Navigator.pop(context);
        },
        items: _colorCollection
            .asMap()
            .entries
            .map<DropdownMenuItem<int>>((entry) {
          int index = entry.key;
          Color color = entry.value;
          return DropdownMenuItem<int>(
            value: index,
            child: Icon(
              index == _selectedColorIndex ? Icons.lens : Icons.trip_origin,
              color: color,
            ),
          );
        }).toList(),
      ),
    );
  }
}
