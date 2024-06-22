// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_1/NavigationKedua.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Pertama"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HalamanKedua(
                          nilai: 10,
                          pesan: 'Yogikk',
                        )),
              );
              print(result);
            },
            child: const Text("Click Me!!!...")),
      ),
    );
  }
}
