/*

    This file is responsible for the front-end of the elevation controls and
    saw on/off.

*/

import 'package:flutter/material.dart';

class Left_Bay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.only(bottom: height*0.15,right: width*0.075),
          child: new SizedBox(
            width: 100.0,
            height: 80.0,
            child: RaisedButton(
              disabledColor: Colors.transparent,
              child: Image.asset('assets/icons/btn_halfLit_beta.png'),
              //color:  Colors.blueAccent[600],
              onPressed: null,
            ),
          ),
        ),

        new SizedBox(
          width: 200.0,
          height: 80.0,
          child: RaisedButton(
            disabledColor: Colors.transparent,
            child: Image.asset('assets/icons/btn_upUnpressed_beta.png'),
            //color:  Colors.blueAccent[600],
            onPressed: null,
          ),
        ),

        new SizedBox(
          width: 200.0,
          height: 80.0,
          child: RaisedButton(
            disabledColor: Colors.transparent,
            child: Image.asset('assets/icons/btn_downUnpressed_beta.png'),
            //color:  Colors.blueAccent[600],
            onPressed: null,
          ),
        ),

      ],
    );
  }
}