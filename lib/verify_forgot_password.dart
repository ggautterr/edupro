import 'package:edupro/create_new_password.dart';
import 'package:flutter/material.dart';

class VerifyForgotPassword extends StatefulWidget {
  const VerifyForgotPassword({super.key});

  @override
  State<VerifyForgotPassword> createState() => _VerifyForgotPasswordState();
}

class _VerifyForgotPasswordState extends State<VerifyForgotPassword> {
  List<String> password = [];

  void addNumberToList(String number) {
    setState(() {
      if (password.length < 4) {
        password.add(number);
      }
    });
  }

  void deleteNumbersFromList() {
    if (password.isNotEmpty) {
      setState(() {
        password.removeLast();
      });
    }
  }

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
      body: SingleChildScrollView(
        child: Column(
          spacing: 40,
          children: [
            SizedBox(
              width: 240,
              child: Text(
                "Code has been Send to ( +1 ) ***-***-*529",
                style: TextStyle(fontFamily: "Mulish", fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: List.generate(4, (index) {
                return Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withValues(alpha: .1),
                        offset: Offset(0, 2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      password.length < index + 1 ? '' : '*', // password[index]
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              width: 230,
              child: Text(
                "Resend Code in 59s",
                style: TextStyle(fontFamily: "Mulish", fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton.icon(
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
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (idx) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(3, (index) {
                          return InkWell(
                            onTap:
                                () => addNumberToList('${(idx * 3) + index + 1}'),
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  '${(idx * 3) + index + 1}',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              '*',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => addNumberToList('0'),
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              '0',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: deleteNumbersFromList,
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(child: Icon(Icons.backspace_outlined)),
                        ),
                      ),
                    ],
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
