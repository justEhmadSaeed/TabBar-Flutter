import 'package:flutter/material.dart';
import 'package:tabbar_flutter/constants.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(selectedDate.toLocal().toString().split(' ')[0]),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: kButtonStyle,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Open Date Picker',
              style: kCheckboxListTileStyle,
            ),
          ),
          onPressed: () => _selectDate(context),
        ),
      ],
    );
  }
}
