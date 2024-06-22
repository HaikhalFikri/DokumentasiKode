import 'package:flutter/material.dart';
import 'LoginContentPage.dart';

main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginContentPage(),
      ),
    );
  }
}
