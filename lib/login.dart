import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.from(alpha: 255, red: 245, green: 249, blue: 255),
      ),
      backgroundColor: Color.from(alpha: 255, red: 245, green: 249, blue: 255),
      body: Center(
        child: Text("Login"),
      ),
    );
  }
}