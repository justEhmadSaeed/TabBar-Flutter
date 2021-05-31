import 'package:flutter/material.dart';

class TextFieldClass extends StatefulWidget {
  @override
  _TextFieldClassState createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  final _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: _textFieldController,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.tab,
              color: Colors.tealAccent,
            ),
            focusColor: Colors.tealAccent,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent)),
            labelText: 'Tab Input',
            labelStyle: TextStyle(color: Colors.tealAccent)),
      ),
    );
  }
}
