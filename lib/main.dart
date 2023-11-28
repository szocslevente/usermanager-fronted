// ignore_for_file: prefer_const_constructors

import 'package:app_test/Pages/Login.dart';
import 'package:app_test/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:developer' as developer;

void main() {
  final port = int.tryParse(const String.fromEnvironment('PORT')) ?? 8080;
  runApp(MyApp(port: port));
}

class MyApp extends StatelessWidget {
  final int port;

  MyApp({Key? key, required this.port}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User-manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 213, 255)),
        useMaterial3: true,
        primaryColor: AppColors.primary),
      home: LoginPage(port: port),
    );
  }
}
