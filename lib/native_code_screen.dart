// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class NativeCodeScreen extends StatefulWidget {

  @override
  State<NativeCodeScreen> createState() => NativeCodeScreenState();
}

class NativeCodeScreenState extends State<NativeCodeScreen> {

  static const platform = MethodChannel('samples.flutter.dev/battery');

  // Get battery level.
  String batteryLevel = 'Unknown battery level.';

  void getBatteryLevel()
  {
    platform.invokeMethod('getBatteryLevel')
        .then((value)
        {
          setState(()
          {
            batteryLevel = 'Battery level at $value % .';
          });
        })
        .catchError((error)
        {
          batteryLevel = "Failed to get battery level: '${error.message}'.";
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: getBatteryLevel,
              child: Text('Get Battery Level'),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(batteryLevel),
          ],
        ),
      ),
    );
  }
}
