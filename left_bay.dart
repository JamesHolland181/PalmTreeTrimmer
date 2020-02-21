/*

    This file is responsible for the front-end of the elevation controls and
    saw on/off.

*/

import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

class Left_Bay_State extends State<Left_Bay>{

  //Filepaths used for the button sprites
  String path_btn_up = 'assets/icons/btn_upUnpressed_beta.png';
  String path_btn_down = 'assets/icons/btn_downUnpressed_beta.png';
  String path_btn_pwr = 'assets/icons/btn_unlit_beta.png';

  Timer clock;

  //Called onPointerDown by "UP BUTTON"
  void upPressed(PointerDownEvent press) {

    //Updates the path used for the up button's sprite
    setState(() {
      path_btn_up = 'assets/icons/btn_upPressed_beta.png';
    });

    //Apply power to motors
  }

  //Called onPointerUp by "UP BUTTON"
  void upUnpressed(PointerUpEvent unpress) {

    //Reverts the path used for the up button's sprite to normal
    setState(() {
      path_btn_up = 'assets/icons/btn_upUnpressed_beta.png';
    });

    //Cut power to motors
  }

  //Called onPointerDown by "DOWN BUTTON"
  void downPressed(PointerDownEvent press) {

    //Updates the path used for the up button's sprite
    setState(() {
      path_btn_down = 'assets/icons/btn_downPressed_beta.png';
    });

    //Apply negative power to motors
  }

  //Called onPointerUp by "DOWN BUTTON"
  void downUnpressed(PointerUpEvent unpress) {

    //Reverts the path used for the up button's sprite to normal
    setState(() {
      path_btn_down = 'assets/icons/btn_downUnpressed_beta.png';
    });

    //Cut power to motors
  }

  //Called onPressed by "POWER BUTTON"
  void pwrPressed() {

    //Updates the path used for the power button's sprite
    setState(() {
      path_btn_pwr = 'assets/icons/btn_lit_beta.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        //POWER BUTTON
        new SizedBox(
          width: 90,
          height: 90,
          child: FlatButton(
            child: Image.asset(path_btn_pwr),
            onPressed: pwrPressed,
          ),
        ),

        //UP BUTTON
        new SizedBox(
          width: 200,
          height: 120,
          child: Listener(
            child: Image.asset(path_btn_up),
            onPointerDown: upPressed,
            onPointerUp: upUnpressed,
          ),
        ),

        //DOWN BUTTON
        new SizedBox(
          width: 200,
          height: 120,
          child: Listener(
            child: Image.asset(path_btn_down),
            onPointerDown: downPressed,
            onPointerUp: downUnpressed,
          ),
        ),
      ],
    );
  }
}
class Left_Bay extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Left_Bay_State();
  }
}