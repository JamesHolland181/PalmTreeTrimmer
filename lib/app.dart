/*

  This is the file responsible for constructing the app.

*/

import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter/services.dart'; // allows for forcing landscape orientation

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    // Below: returns a MaterialApp widget with 'home' parameter 'Controller()', the main screen of our app from home.dart.
    return MaterialApp(home: Controller());
  }
}