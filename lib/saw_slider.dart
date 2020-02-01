/*

  Doesn't slide at the moment.

*/


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Saw_Slider extends StatelessWidget{
  @override
  double _sliderValue = 10.0;
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      // Rotate sliders by 270 degrees
      transform: new Matrix4.identity()..rotateZ(270 * 3.1415927 / 180),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 350.0,
          child: SliderTheme(
            data: SliderThemeData(
                trackHeight: 15.0,
            ),
            child: Slider(
                activeColor: Colors.white,
                inactiveColor: Color(0xFF00a8e8),
                min: 0.0,
                max: 15.0,
                onChanged: (newVal) {
                    //setState(() => _sliderValue = newVal);
                },
                value: _sliderValue,
                )
      ),
      ),
      )
    );
  }
}