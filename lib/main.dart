import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/main_wrapper.dart';
import 'package:weather_app/locator.dart';

void main() async {
  // init locator
  await setup();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainWrapper(),
    ),
  );
}
