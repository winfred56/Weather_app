// import 'dart:js';
import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/City.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(newLocation: 'Accra',),
      '/location': (context) => const City(),
    },
  ));
}

