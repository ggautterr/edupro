import 'package:edupro/login.dart';
import 'package:edupro/register.dart';
import 'package:flutter/material.dart';

class LetsYouIn extends StatelessWidget {
  const LetsYouIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 25,
          children: [
            Text(
              "Let's you in",
              style: TextStyle(
                fontFamily: "Jost",
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 220,
              child: Column(
                spacing: 20,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(right: 10),
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
                      Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Color.fromRGBO(84, 84, 84, 1),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(right: 10),
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
                      Text(
                        "Continue with Apple",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Color.fromRGBO(84, 84, 84, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              spacing: 20,
              children: [
                Text(
                  "( Or )",
                  style: TextStyle(
                    fontFamily: "Mulish",
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(84, 84, 84, 1),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
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
                    margin: EdgeInsets.only(left: 30),
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
                  label: Text(
                    "Sign In with Your Account",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
                        Navigator.push(
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
                SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
