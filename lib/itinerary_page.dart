// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

class itineraryPage extends StatelessWidget {
  const itineraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgColor = Color.fromRGBO(120, 91, 248, 1);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Stack(children: [
        //for double color background
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: screenHeight * 0.35,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 250, 243, 243),
            ))
          ],
        ),
        // Main contents are in this column
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 22),
                    child: Row(children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        splashColor: bgColor,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_back_ios_new_rounded),
                            )),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Itinerary',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.menu_rounded),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  dateChip(bgColor, Colors.transparent, 'Feb 02', Colors.white),
                  SizedBox(
                    width: 16,
                  ),
                  dateChip(Colors.white, Colors.white, 'Feb 03',
                      Color.fromARGB(47, 255, 255, 255)),
                  SizedBox(
                    width: 16,
                  ),
                  dateChip(Colors.white, Colors.white, 'Feb 04',
                      Color.fromARGB(47, 255, 255, 255)),
                  SizedBox(
                    width: 16,
                  ),
                  dateChip(Colors.white, Colors.white, 'Feb 05',
                      Color.fromARGB(47, 255, 255, 255)),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 29.0, right: 10),
                        child: Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Text(
                        'Next up: Flight from UK to ARN',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0, right: 36),
                        child: DottedDashedLine(
                            height: 300,
                            width: 0,
                            strokeWidth: 2,
                            dashSpace: 5,
                            dashColor: Color.fromARGB(255, 39, 102, 248),
                            axis: Axis.vertical),
                      ),
                      Container(
                        width: screenWidth * 0.72,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: screenWidth * 0.72,
                                height: screenWidth * 0.35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: Image.asset(
                                    'assets/plane_taking_on.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delta Air Line',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.flight_takeoff,
                                      color: Color.fromARGB(255, 39, 102, 248),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Departure 8:30 AM',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      'Gate 11',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10, top: 10, bottom: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Check in',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 16,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                    Text(
                                      'Details',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                    )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 10),
                        child: Column(
                          children: [
                            DottedDashedLine(
                            height: 30,
                            width: 0,
                            strokeWidth: 2,
                            dashSpace: 5,
                            dashColor: Color.fromARGB(255, 39, 102, 248),
                            axis: Axis.vertical),
                            Icon(
                              Icons.circle,
                              color: bgColor,
                              size: 18,
                            ),
                            DottedDashedLine(
                            height: 60,
                            width: 0,
                            strokeWidth: 2,
                            dashSpace: 5,
                            dashColor: Color.fromARGB(255, 39, 102, 248),
                            axis: Axis.vertical),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Container(
                            width: screenWidth * 0.72,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 14.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Delta Air Line',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Icon(
                                            Icons.flight_land_rounded,
                                            color:
                                                Color.fromARGB(255, 39, 102, 248),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Arrival 9:30 AM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            'Gate 12',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            )),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 10),
                        child: Column(
                          children: [
                            DottedDashedLine(
                            height: 30,
                            width: 0,
                            strokeWidth: 2,
                            dashSpace: 5,
                            dashColor: Color.fromARGB(255, 39, 102, 248),
                            axis: Axis.vertical),
                            Icon(
                              Icons.circle,
                              color: bgColor,
                              size: 18,
                            ),
                            DottedDashedLine(
                            height: 60,
                            width: 0,
                            strokeWidth: 2,
                            dashSpace: 5,
                            dashColor: Color.fromARGB(255, 39, 102, 248),
                            axis: Axis.vertical),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Container(
                            width: screenWidth * 0.72,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 14.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Delta Air Line',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Icon(
                                            Icons.car_rental_rounded,
                                            color:
                                                Color.fromARGB(255, 39, 102, 248),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Pick up 10:30 AM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            'Terminal 2',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            )),
                      )
                    ],
                  ),
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 10),
                      child: Column(
                        children: [
                          DottedDashedLine(
                          height: 30,
                          width: 0,
                          strokeWidth: 2,
                          dashSpace: 5,
                          dashColor: Color.fromARGB(255, 39, 102, 248),
                          axis: Axis.vertical),
                          Icon(
                            Icons.circle,
                            color: bgColor,
                            size: 18,
                          ),
                          DottedDashedLine(
                          height: 30,
                          width: 0,
                          strokeWidth: 2,
                          dashSpace: 5,
                          dashColor: Color.fromARGB(255, 39, 102, 248),
                          axis: Axis.vertical),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Container(
                          width: screenWidth * 0.72,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 14.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Hotel St. Regis',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Icon(
                                          Icons.home_work_outlined,
                                          color:
                                              Color.fromARGB(255, 39, 102, 248),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Check in 12:00 PM',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          'Gate 1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                          )),
                    )
                  ],
                ),
                ],
              ),
              ),
            )
          ],
        ),
      ])),
    );
  }

  Container dateChip(Color textColor, Color borderColor, String givenText,
      Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: borderColor, width: 0.9)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Text(
          givenText,
          style: TextStyle(
              fontWeight: FontWeight.w700, color: textColor, fontSize: 14),
        ),
      ),
    );
  }
}
