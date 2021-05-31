import 'package:flutter/material.dart';
import 'package:tabbar_flutter/constants.dart';

class RadioList extends StatefulWidget {
  @override
  _RadioListState createState() => _RadioListState();
}

const items = ['Tab 1', 'Tab 2', 'Tab 3', 'Tab 4', 'Tab 5'];

class _RadioListState extends State<RadioList> {
  String _selectedValue = items[2];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (element) => ListTile(
              title: Text(
                element,
                style: kCheckboxListTileStyle,
              ),
              leading: Radio(
                  value: element,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value.toString();
                    });
                  }),
            ),
          )
          .toList(),
    );
  }
}
