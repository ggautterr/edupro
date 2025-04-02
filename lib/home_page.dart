import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 249, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            Row(),
            Container(
              width: 340,
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, ALEX",
                        style: TextStyle(
                          fontFamily: "Jost",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 220,
                        child: Text(
                          "What Would you like to learn Today? Search Below.",
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(84, 84, 84, 0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      "assets/images/notifications.png",
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 340,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        hoverColor: Colors.transparent,
                        filled: true,
                        hintText: "Search for..",
                        hintStyle: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffB4BDC4),
                        ),
                        prefixIcon: Image.asset(
                          'assets/images/search.png',
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xff0961F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      icon: Image.asset('assets/images/configuration.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 340,
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xff0961F5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) => setState(() => page = value),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 3,
                        children: [
                          Text(
                            "25% OFF*",
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Today’s Special",
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 170,
                            child: Text(
                              "Get a Discount for Every Course Order only Valid for Today.!",
                              style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image(image: NetworkImage('https://picsum.photos/340')),
                    Image(image: NetworkImage('https://picsum.photos/350')),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10.0,
              children: [
                Text(page.toString()),
                CircleAvatar(radius: 8, backgroundColor: Colors.white),
                CircleAvatar(radius: 8, backgroundColor: Colors.amberAccent),
                CircleAvatar(radius: 8, backgroundColor: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
