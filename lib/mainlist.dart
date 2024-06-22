import 'package:flutter/material.dart';
import 'package:flutter_1/listviewbuilderpage.dart';
import 'package:flutter_1/listviewbuilderpage.dart';

main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewBuilderPage(),
    );
  }
}
