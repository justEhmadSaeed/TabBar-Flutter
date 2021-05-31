import 'package:flutter/material.dart';

final Icon kDrawerHeaderIcon = Icon(
  Icons.visibility,
  color: Colors.cyan[700],
  size: 30,
);
const kDropdownItemsStyle = TextStyle(fontSize: 18, color: Colors.white);
const kCheckboxListTileStyle = TextStyle(fontSize: 20);
final kButtonStyle = ButtonStyle(
  backgroundColor:
      MaterialStateProperty.resolveWith((states) => Colors.tealAccent[700]),
);
