import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.from(alpha: 255, red: 245, green: 249, blue: 255),
      ),
      backgroundColor: Color.from(alpha: 255, red: 245, green: 249, blue: 255),
      body: Center(
        child: Text("Register"),
      ),
    );
  }
}