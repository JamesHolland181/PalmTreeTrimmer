/*

  This is the file responsible for controlling the main screen of the app.

*/

import 'package:flutter/material.dart';

class Controller extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Below: returns a Container() widget that holds all of our interactive assets
    //return Container();
    return Scaffold(
        appBar: AppBar(
          title: Text('OwO what\'s this!?!?')
        ),
            body: Text('OwO'),
    );
  }
}