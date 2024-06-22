import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return MaterialApp(
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Materi Mobile"),
        actions: [
          Icon(Icons.notification_important_outlined),
          Icon(Icons.message),
          Icon(Icons.access_alarm_outlined),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.green, width: 6),
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        // width: 400,
        //height: 200,
        //color: Colors.red.shade300,
        child: const Center(
          child: Text(
            "hellloooooo",
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Roboto', // Ganti dengan jenis font yang diinginkan
            ),
          ),
        ),
      ),
    );
  }
}
