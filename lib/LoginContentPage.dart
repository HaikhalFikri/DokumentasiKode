import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginContentPage extends StatelessWidget {
  const LoginContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _header(),
            _LoginForm(context),
            _LupaPassword(),
            _buatAkun(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Welcome Back",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          "Enter Your Credential to Login",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _LoginForm(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Color.fromARGB(208, 250, 101, 255),
            filled: true,
            prefixIcon: Icon(Icons.person),
            hintText: "Username",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Color.fromARGB(208, 250, 101, 255),
            filled: true,
            prefixIcon: Icon(Icons.lock),
            hintText: "Password",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.only(
                  top: 11,
                  bottom: 11,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {},
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _LupaPassword() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Lupa password?",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
    );
  }

  Widget _buatAkun() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Belum punya akun?"),
        TextButton(
          onPressed: () {},
          child: Text("Daftar Skuy"),
        ),
      ],
    );
  }
}
