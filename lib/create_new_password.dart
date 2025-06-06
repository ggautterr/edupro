import 'package:edupro/home_page.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
        title: Text(
          "Create New Password",
          style: TextStyle(
            fontFamily: "Jost",
            fontWeight: FontWeight.w600,
            fontSize: 19,
            color: Color.fromRGBO(32, 34, 68, 1),
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      body: Column(
        spacing: 20,
        children: [
          Row(),
          Spacer(),
          SizedBox(
            width: 290,
            child: Text(
              "Create Your New Password",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "Jost",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 290,
            child: Column(
              spacing: 10,
              children: [
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
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Reapeet Password",
                    prefixIcon: Icon(Icons.lock_open_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color.fromRGBO(245, 249, 255, 1),
                    content: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 20,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              image: DecorationImage(
                                image: AssetImage("assets/images/settings.png"),
                              ),
                            ),
                          ),
                          Text(
                            "Congratulations",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Jost",
                            ),
                          ),
                          Text(
                            "Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Jost",
                            ),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/load.png",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
