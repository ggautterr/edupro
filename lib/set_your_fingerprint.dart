import 'package:edupro/home_page.dart';
import 'package:flutter/material.dart';

class SetYourFingerprint extends StatelessWidget {
  const SetYourFingerprint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
        title: Text(
          "Set Your Fingerprint",
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
        children: [
          Container(
            width: 250,
            margin: EdgeInsets.only(top: 70),
            child: Text(
              "Add a Fingerprint to Make your Account more Secure",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Mulish",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.symmetric(vertical: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/finger_frame.png"),
              ),
            ),
            child: Image.asset("assets/images/fingerprint.png", scale: 1.2),
          ),
          Container(
            width: 250,
            margin: EdgeInsets.only(bottom: 70),
            child: Text(
              "Please Put Your Finger on the Fingerprint Scanner to get Started.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Mulish",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => SetYourFingerprint(),
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(232, 241, 255, 1),
                        minimumSize: Size(110, 50),
                        elevation: 0,
                        side: BorderSide(
                          color: Color.fromRGBO(180, 189, 196, 0.2),
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Skip",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(32, 34, 68, 1),
                          fontSize: 16,
                        ),
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
                                padding: const EdgeInsets.symmetric(
                                  vertical: 30.0,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 20,
                                  children: [
                                    Container(
                                      width: 140,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          150,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/alert_avatar.png",
                                          ),
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
                        margin: EdgeInsets.only(left: 20),
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
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
