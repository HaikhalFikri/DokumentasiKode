import 'package:flutter/material.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.all(10),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "NIK: 23423532456546456",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
              fontFamily: 'Poppins semi bold',
            ),
          ),
          Text("Nama: Haikal Fikri Andiani"),
          Text("Alamat: Jl. Kapten Waroka RT 01 RW 03"),
        ],
      ),
    );
  }
}
