import 'package:flutter/material.dart';

class SliderClass extends StatefulWidget {
  @override
  _SliderClassState createState() => _SliderClassState();
}

class _SliderClassState extends State<SliderClass> {
  double _sliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${_sliderValue.round()} Slider Value'),
        SizedBox(height: 20),
        Slider(
          min: 0,
          max: 100,
          value: _sliderValue,
          activeColor: Colors.tealAccent,
          inactiveColor: Colors.teal,
          label: 'Set Slider Value',
          onChanged: (double value) {
            setState(() {
              _sliderValue = value;
            });
          },
        ),
      ],
    );
  }
}
