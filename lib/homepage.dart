import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key); // Perbaiki sintaksis constructor

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> { // Ubah _homepage menjadi _MyWidgetState
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("angka"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("kurang"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("tambah"),
            ),
          ],
        ),
      ],
    );
  }
}
