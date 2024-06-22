import 'package:flutter/material.dart';
import 'package:flutter_1/latihan.dart';
import 'simplecal.dart';

main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: latihan1(),
    ));
  }
}
