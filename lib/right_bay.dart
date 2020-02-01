/*

    This file is responsible for the front-end of the saw/tool assembly manipulation.

*/

import 'package:flutter/material.dart';

class Right_Bay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
          padding: EdgeInsets.only(top: 100.0, left: 500.0),
          child: RaisedButton(
            disabledColor: Colors.transparent,
              child: SizedBox(
                width: 100.0,
                height: 100.0,
                child: Image.asset('assets/icons/saw_blade.png'),
              ),
              //color:  Colors.blueAccent[600],
              onPressed: null,
            ),
        );
    }
}