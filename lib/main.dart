// import 'dart:js';
import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/LoadingPage.dart';
import 'pages/City.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingPage(),
      '/home': (context) => const Home(),
      '/location': (context) => const City(),
    },
  ));
}

