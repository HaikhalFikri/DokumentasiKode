import 'package:flutter/material.dart';

// ignore: camel_case_types
class latihan1 extends StatefulWidget {
  const latihan1({super.key});

  @override
  State<latihan1> createState() => _latihan1State();
}

class _latihan1State extends State<latihan1> {
  Color warna = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            color: warna,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  warna = Colors.red;
                });
              },
              child: const Text("Merah")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  warna = Colors.yellow;
                });
              },
              child: const Text("Kuning")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  warna = Colors.blue;
                });
              },
              child: const Text("Biru")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  warna = Colors.black;
                });
              },
              child: const Text("Reset")),
        ],
      ),
    );
  }
}
