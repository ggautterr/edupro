import 'package:edupro/forgot_password.dart';
import 'package:edupro/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(),
            SizedBox(
              width: 290,
              height: 60,
              child: Image(image: AssetImage("assets/images/logo.png")),
            ),
            Container(
              width: 290,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    "Let’s Sign In.!",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Login to Your Account to Continue your Courses",
                    style: TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color.fromRGBO(84, 84, 84, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 290,
              child: Column(
                spacing: 15,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_open_outlined),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 315,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        child: Text(
                          "Remember Me",
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(84, 84, 84, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(84, 84, 84, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                spacing: 15,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Login()),
                      // );
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
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 290,
                    child: Text(
                      "Or Continue With",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Mulish",
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(84, 84, 84, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors
                                        .grey
                                        .shade200, // Цвет тени с прозрачностью
                                spreadRadius: 2, // Распределение тени
                                blurRadius: 2, // Размытие тени
                                offset: Offset(0, 0), // Смещение тени (X, Y)
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/google.png"),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors
                                        .grey
                                        .shade200, // Цвет тени с прозрачностью
                                spreadRadius: 2, // Распределение тени
                                blurRadius: 2, // Размытие тени
                                offset: Offset(0, 0), // Смещение тени (X, Y)
                              ),
                            ],
                          ),
                          child: Image.asset("assets/images/apple.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an Account? ",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(84, 84, 84, 1),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(9, 97, 245, 1),
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationColor: Color.fromRGBO(9, 97, 245, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
