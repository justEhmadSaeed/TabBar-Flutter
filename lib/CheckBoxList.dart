import 'package:flutter/material.dart';
import 'package:tabbar_flutter/constants.dart';

class CheckBoxList extends StatefulWidget {
  CheckBoxList({required this.children, required this.controller}) {
    this.values = List.generate(children.length, (index) => false);
  }
  final List<String> children;
  late final List<bool> values;

  final TabController controller;
  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  @override
  Widget build(BuildContext context) {
    var children = widget.children;
    var values = widget.values;
    return Column(
        children: children.map((element) {
      int index = children.indexOf(element);
      return CheckboxListTile(
        activeColor: Colors.teal,
        title: Text(
          element,
          style: kCheckboxListTileStyle,
        ),
        value: values[index],
        onChanged: (bool? value) {
          setState(() {
            values[index] = value!;
          });
        },
      );
    }).toList());
  }
}
