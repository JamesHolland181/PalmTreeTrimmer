/*

  This is the file responsible for controlling the main screen of the app.

*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:palm_trimmer/left_bay.dart';
import 'package:palm_trimmer/right_bay.dart';
import 'package:palm_trimmer/saw_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Controller extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Below: returns a Container() widget that holds all of our interactive assets
    return Scaffold(
      backgroundColor: Color(0xFF003459),
      appBar: AppBar(
        elevation: 25.0,
        backgroundColor: Color(0xFF00a8e8),
        title: Text("Palm Trim-o-matic!",  style: GoogleFonts.inconsolata(fontWeight: FontWeight.w800),),
      ),
      body: Stack( // Stack allows for the layering of our widgets
        children: <Widget>[
          Left_Bay(),
          Saw_Slider(),
          Right_Bay()
        ],
      )
      );//,
    //);
  }
}