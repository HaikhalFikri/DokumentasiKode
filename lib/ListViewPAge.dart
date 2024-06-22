import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 150,
            color: Colors.amber[600],
            child: const Center(
              child: Text("Kuning"),
            ),
          ),
          Container(
            height: 150,
            color: Color.fromARGB(255, 86, 6, 160),
            child: const Center(
              child: Text("Ungu Janda"),
            ),
          ),
          Container(
            height: 150,
            color: Color.fromARGB(255, 9, 22, 197),
            child: const Center(
              child: Text("Biru Tua"),
            ),
          ),
          Container(
            height: 150,
            color: Color.fromARGB(255, 172, 3, 107),
            child: const Center(
              child: Text("Pink Old"),
            ),
          ),
          Container(
            height: 150,
            color: Color.fromARGB(255, 13, 230, 6),
            child: const Center(
              child: Text("Hijau"),
            ),
          ),
          Container(
            height: 150,
            color: Color.fromARGB(255, 255, 217, 0),
            child: const Center(
              child: Text("Kuning Muda"),
            ),
          ),
        ],
      ),
    );
  }
}
