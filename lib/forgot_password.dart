import 'package:edupro/verify_forgot_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
        child: Column(
          spacing: 30,
          children: [
            Spacer(),
            SizedBox(
              width: 280,
              child: Text(
                "Select which contact details should we use to Reset Your Password",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ),
            Column(
              spacing: 10,
              children: [
                Container(
                  width: 290,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Image.asset("assets/images/email.png", width: 36),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Via Email", style: TextStyle(fontSize: 10),),
                          Text("priscilla.frank26@mail.com", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 290,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Image.asset("assets/images/email.png", width: 36),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Via SMS", style: TextStyle(fontSize: 10),),
                          Text("( +91 ) 958-894-5529", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyForgotPassword()),
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
                  "Continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
