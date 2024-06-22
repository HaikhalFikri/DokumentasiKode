import 'package:flutter/material.dart';
import 'user.dart';

class ListViewBuilderPage extends StatelessWidget {
  ListViewBuilderPage({Key? key}) : super(key: key);

  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Color.fromARGB(255, 7, 216, 59),
    Color.fromARGB(255, 163, 7, 155),
    Color.fromARGB(255, 13, 198, 255),
    Color.fromARGB(255, 255, 105, 155),
  ];

  List<user> users = [
    user(Nama: "Paidjoe", Hoby: "Membaca"),
    user(Nama: "Sutaji", Hoby: "Bersepeda"),
    user(Nama: "Sampitak", Hoby: "Berkendara"),
    user(Nama: "Truno", Hoby: "Memancing"),
    user(Nama: "Suraji", Hoby: "Tidur"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            color: colors[index % 5],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Nama: ${users[index].Nama}"),
                  Text("Hobi: ${users[index].Hoby}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
