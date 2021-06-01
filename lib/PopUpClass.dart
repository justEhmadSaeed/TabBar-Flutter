import 'package:flutter/material.dart';

class PopUpClass extends StatefulWidget {
  PopUpClass(this._tabController);
  final TabController _tabController;
  @override
  _PopUpClassState createState() => _PopUpClassState();
}

const items = [
  'Dropdown',
  'Elevated Button',
  'Floating Action Button',
  'Icon Button',
  'Pop-up Button'
];

class _PopUpClassState extends State<PopUpClass> {
  String popupValue = items[4];
  @override
  Widget build(BuildContext context) {
    final TabController _tabController = widget._tabController;
    return PopupMenuButton(
      // initialValue: popupValue,
      icon: Icon(
        Icons.tab,
        color: Colors.tealAccent,
      ),
      iconSize: 40,
      onSelected: (value) {
        setState(() {
          popupValue = value.toString();
          _tabController.animateTo(items.indexOf((value.toString())));
        });
      },
      itemBuilder: (context) => items
          .map((e) => PopupMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
    );
  }
}
