// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'itinerary_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgColor = Color.fromRGBO(120, 91, 248, 1);
    double screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Rayana 👋',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Explore the Beauty of Nature!',
                      style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                  ],
                ),
                Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 32,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Icon(
                  Icons.cloud,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '15' + '\u2103',
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => itineraryPage()));
                    },
                    borderRadius: BorderRadius.circular(5),
                    child: place_container(Icons.map_rounded, 'Itinerary')),
                place_container(Icons.restaurant_rounded, 'Restaurant'),
                place_container(Icons.flight_takeoff, 'Flight'),
                place_container(Icons.home_work, 'Hotel'),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            width: 35,
                            height: 3,
                            decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Text(
                          'Recent',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          upcoming_with_photos(
                              screenSize,
                              'assets/canada_pic.jpg',
                              'Canada',
                              '13 March 2023'),
                          SizedBox(
                            width: 30,
                          ),
                          upcoming_with_photos(
                              screenSize,
                              'assets/australia_2.jpg',
                              'Australia',
                              '08 April 2023'),
                          SizedBox(
                            width: 30,
                          ),
                          upcoming_with_photos(
                              screenSize,
                              'assets/australia_2.jpg',
                              'Australia',
                              '08 April 2023'),
                          SizedBox(
                            width: 30,
                          ),
                          upcoming_with_photos(
                              screenSize,
                              'assets/australia_2.jpg',
                              'Australia',
                              '08 April 2023'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Your Travel Buddies',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buddiesImageName('assets/model1.jpeg', 'Eleanor'),
                      buddiesImageName('assets/model2.jpeg', 'Robert'),
                      buddiesImageName('assets/model3.jpeg', 'Pena'),
                      buddiesImageName('assets/model4.jpeg', 'Marvin'),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Add',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ))
        ]),
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: GNav(
          backgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.start,
          iconSize: 22,
          gap: 5,
          tabs: [
            GButton(
              icon: Icons.home_rounded,
              iconActiveColor: bgColor,
              text: 'Home',
              iconColor: Colors.grey,
              textColor: bgColor,
            ),
            GButton(
              icon: Icons.grid_view_rounded,
              iconActiveColor: bgColor,
              text: 'Menu',
              iconColor: Colors.grey,
              textColor: bgColor,
            ),
            GButton(
              icon: Icons.watch_later_outlined,
              iconActiveColor: bgColor,
              text: 'Time',
              iconColor: Colors.grey,
              textColor: bgColor,
            ),
            GButton(
              icon: Icons.notifications_none,
              iconActiveColor: bgColor,
              text: 'Notifications',
              iconColor: Colors.grey,
              textColor: bgColor,
            ),
            GButton(
              icon: Icons.account_circle_outlined,
              iconActiveColor: bgColor,
              text: 'Profile',
              iconColor: Colors.grey,
              textColor: bgColor,
            ),
          ],
        ),
      ),
    );
  }

  Column buddiesImageName(String imageLocation, String name) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                imageLocation,
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Container upcoming_with_photos(double screenSize, String imageLocation,
      String countryName, String date) {
    return Container(
      width: 0.38 * screenSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 0.35 * screenSize,
              child: Image.asset(
                imageLocation,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    countryName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Column place_container(IconData givenIcon, String givenText) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(83, 255, 255, 255),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Color.fromARGB(129, 255, 255, 255), width: 0.8)),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Icon(
                givenIcon,
                color: Colors.white,
                size: 32,
              ),
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          givenText,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
        )
      ],
    );
  }
}
