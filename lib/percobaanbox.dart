import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: kotak(),
        ),
      ),
    );
  }
}

class kotak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 8,
      children: [
        // Baris 1
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),

        // Baris 2
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),

        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),

        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),

        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),

        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),

        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),

        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
        kotax(color: Colors.black),
        kotax(color: Colors.white),
      ],
    );
  }
}

class kotax extends StatelessWidget {
  final Color color;

  const kotax({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      width: 10,
      height: 10,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}
