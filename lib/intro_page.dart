import 'package:edupro/lets_you_in.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController pageController = PageController();
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LetsYouIn()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                  ).copyWith(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                  ),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 65,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) => setState(() => page = value),
                  children: [
                    Column(
                      children: [
                        Text(
                          "Online Learning",
                          style: TextStyle(
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "We Provide Classes Online Classes and Pre Recorded Leactures.!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Jost",
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 54, 54, 54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Learn from Anytime",
                          style: TextStyle(
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Booked or Same the Lectures for Future",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Jost",
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 54, 54, 54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Get Online Certificate",
                          style: TextStyle(
                            fontFamily: "Jost",
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Analyse your scores and Track your results",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Jost",
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 54, 54, 54),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 120, 25, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: page == 0 ? 16 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color:
                                  page == 0
                                      ? Color.fromARGB(255, 9, 97, 245)
                                      : Color.fromARGB(255, 213, 226, 245),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            width: page == 1 ? 16 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color:
                                  page == 1
                                      ? Color.fromARGB(255, 9, 97, 245)
                                      : Color.fromARGB(255, 213, 226, 245),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            width: page == 2 ? 16 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color:
                                  page == 2
                                      ? Color.fromARGB(255, 9, 97, 245)
                                      : Color.fromARGB(255, 213, 226, 245),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (page != 2) {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LetsYouIn(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            page == 2
                                ? EdgeInsets.fromLTRB(15, 0, 5, 0)
                                : EdgeInsets.all(0),
                        minimumSize: Size(40, 40),
                        backgroundColor: Color.fromARGB(255, 9, 97, 245),
                      ),
                      child: Row(
                        children: [
                          page == 2
                              ? Text(
                                "Get Started",
                                style: TextStyle(color: Colors.white),
                              )
                              : Text(""),
                          Container(
                            width: 30,
                            height: 30,
                            margin:
                                page == 2
                                    ? EdgeInsets.only(left: 10)
                                    : EdgeInsets.all(0),
                            decoration: BoxDecoration(
                              color:
                                  page == 2
                                      ? Colors.white
                                      : Color.fromARGB(255, 9, 97, 245),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color:
                                  page == 2
                                      ? Color.fromARGB(255, 9, 97, 245)
                                      : Colors.white,
                            ),
                          ),
                        ],
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
