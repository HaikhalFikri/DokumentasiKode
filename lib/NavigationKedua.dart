import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HalamanKedua extends StatelessWidget {
  String? pesan;
  int? nilai;
  HalamanKedua({
    super.key, 
    this.pesan = "Go Back??", 
    this.nilai = 100
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Kedua"),
      ),
      body: Center(
        
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Rawrrrrr!!!.....');
          }, 
          child: Text("$pesan : $nilai ")),
      ),
    );
  }
}