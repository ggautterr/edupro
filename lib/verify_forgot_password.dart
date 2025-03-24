import 'package:edupro/create_new_password.dart';
import 'package:flutter/material.dart';

class VerifyForgotPassword extends StatefulWidget {
  const VerifyForgotPassword({super.key});

  @override
  State<VerifyForgotPassword> createState() => _VerifyForgotPasswordState();
}

class _VerifyForgotPasswordState extends State<VerifyForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
        title: Text(
          "Forgot Password",
          style: TextStyle(
            fontFamily: "Jost",
            fontWeight: FontWeight.w600,
            fontSize: 19,
            color: Color.fromRGBO(32, 34, 68, 1),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateNewPassword()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.fromLTRB(20, 5, 8, 5),
            backgroundColor: Color.fromRGBO(9, 97, 245, 1),
          ),
          iconAlignment: IconAlignment.end,
          icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Color.fromRGBO(9, 97, 245, 1),
              size: 24,
            ),
          ),
          label: SizedBox(
            width: 215,
            child: Text(
              "Verify",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
