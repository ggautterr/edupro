import 'package:edupro/create_new_pin.dart';
import 'package:flutter/material.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({super.key});

  @override
  State<FillYourProfile> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
  String flag = 'US';
  String gender = 'none';
  List hintPhoneNum = [
    {
      'US': '(+1) 724-848-1225',
      'RU': '(+7) 989-995-94-69',
      'UZ': '(+998) 98 765 43 21',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
        title: Text(
          "Fill Your Profile",
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
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromRGBO(232, 241, 255, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/avatar.png",
                            width: 70,
                            height: 76,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(22, 127, 113, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.edit_calendar_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
                      hintText: "Full Name",
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
                      hintText: "Nick Name",
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
                      hintText: "Date of Birth",
                      prefixIcon: Icon(Icons.date_range_outlined),
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
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        DropdownButton(
                          value: flag,
                          padding: EdgeInsets.only(left: 12),
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          underline: SizedBox(),
                          items: [
                            DropdownMenuItem(
                              value: 'US',
                              child: Image.network(
                                "https://flagcdn.com/w40/us.png",
                                width: 24,
                                height: 18,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'RU',
                              child: Image.network(
                                "https://flagcdn.com/w40/ru.png", // Флаг США (40x30px)
                                width: 24,
                                height: 18,
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'UZ',
                              child: Image.network(
                                "https://flagcdn.com/w40/uz.png", // Флаг США (40x30px)
                                width: 24,
                                height: 18,
                              ),
                            ),
                          ],
                          onChanged:
                              (value) => {
                                setState(() {
                                  flag = value ?? 'US';
                                }),
                              },
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: hintPhoneNum[0][flag],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            value: gender == 'none' ? null : gender,
                            padding: EdgeInsets.only(left: 12),
                            hint: Text('Gender'),
                            iconSize: 0,
                            underline: SizedBox(),
                            items: [
                              DropdownMenuItem(
                                value: 'male',
                                child: Text("Male"),
                              ),
                              DropdownMenuItem(
                                value: 'female',
                                child: Text("Female"),
                              ),
                              DropdownMenuItem(
                                value: 'none',
                                child: Text("None"),
                              ),
                            ],
                            onChanged:
                                (value) => {
                                  setState(() {
                                    gender = value ?? 'none';
                                  }),
                                },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Icon(Icons.arrow_drop_down, size: 30),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateNewPin()),
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
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
