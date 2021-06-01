import 'package:flutter/material.dart';
import 'package:tabbar_flutter/constants.dart';

class DropDown extends StatefulWidget {
  DropDown(this._tabController);
  final TabController _tabController;
  @override
  _DropDownState createState() => _DropDownState();
}

const items = [
  'Dropdown',
  'Elevated Button',
  'Floating Action Button',
  'Icon Button',
  'Pop-up Button'
];

class _DropDownState extends State<DropDown> {
  String dropdownValue = items[0];
  @override
  Widget build(BuildContext context) {
    final TabController _tabController = widget._tabController;
    return DropdownButton(
      value: dropdownValue,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
          _tabController.animateTo(items.indexOf((value)));
        });
      },
      style: kDropdownItemsStyle,
      isExpanded: true,
      items: items
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      underline: Container(
        height: 3,
        color: Colors.tealAccent,
      ),
    );
  }
}
