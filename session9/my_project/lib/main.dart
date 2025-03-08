import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.bookmark_outline),
        ), // Background color
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 15, bottom: 10),
                    child: Text(
                      'Travel Destinations',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0, top: 20),
                    child: Icon(
                      Icons.favorite_outline,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Icon(
                      Icons.share,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Image.asset('images/2.png'),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 380,
                height: 240,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(117, 172, 172, 172),
                        width: 0.5),
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 248, 243, 249)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0, bottom: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('Oeschinen Lake\nCampground',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on, color: Colors.red),
                                    Text('kandersteg, switzerland',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.grey)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(53, 252, 84, 143),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                    ),
                                    Text(
                                      '4.1',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color.fromARGB(120, 158, 158, 158),
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    Row(
                      children: [
                        Spacer(flex: 3), // Space on the left side
                        Column(
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              'Call',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18),
                            ),
                          ],
                        ),
                        Spacer(flex: 3), // Space between Call and Route
                        Column(
                          children: [
                            Icon(
                              Icons.navigation_rounded,
                              color: Colors.green,
                              size: 30,
                            ),
                            Text(
                              'Route',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 18),
                            ),
                          ],
                        ),
                        Spacer(flex: 3), // Space between Route and Share
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.purple,
                              size: 30,
                            ),
                            Text('Share',
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 18)),
                          ],
                        ),
                        Spacer(flex: 3), // Space on the right side
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          ' About',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xfff1f9ff)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 35.0, horizontal: 35),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: Row(children: [
                          Icon(
                            Icons.local_offer_rounded,
                            color: Colors.blue,
                            size: 23,
                          ),
                          Text('1,578m above sea level',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                      Text(
                        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
