import 'package:flutter/material.dart';
import 'package:flutter_1/LoginUTS.dart';

class HomeUTS extends StatelessWidget {
  final String username;
  final String NIM;
  final String password;

  const HomeUTS({
    Key? key,
    required this.username,
    required this.NIM,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi dari Field Register:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Username: $username',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'NIM: $NIM',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Password: $password',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginUTS()),
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
