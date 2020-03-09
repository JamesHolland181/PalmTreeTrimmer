/*

  This is the main file, responsible for instantiating the app.

*/

import 'package:flutter/material.dart';
import 'app.dart';
import 'dart:io';
import 'dart:async';

Socket socket;

void main(){
    runApp(App()); // calls 'runApp()' with the parameter 'App()', the class of our application in app.dart
}