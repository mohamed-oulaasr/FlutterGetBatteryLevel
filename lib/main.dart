// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_native_code/native_code_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetBatteryLevel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NativeCodeScreen(),
    );
  }
}

