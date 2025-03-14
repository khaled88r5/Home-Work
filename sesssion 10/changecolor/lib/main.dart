import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentValue = 19;
  Color currentColor = const Color.fromARGB(255, 168, 41, 41);
  String numType = '';
  bool textsize = false;
  int fontsize = 18;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            currentColor,
            const Color.fromARGB(255, 255, 255, 255),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            title: Text('Interactive UI Demo',
                style: TextStyle(color: Colors.white, fontSize: 22)),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 190,
                    height: 90,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(142, 153, 153, 153),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: currentColor),
                    child: Center(
                        child: Text(
                      numType + currentValue.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: fontsize.toDouble(),
                          fontWeight: FontWeight.bold),
                    ))),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, bottom: 35.0),
                  child: Container(
                      width: 190,
                      height: 90,
                      child: Center(
                          child: Column(
                        children: [
                          Text('currentvalue!',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Text(
                            currentValue.toString(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: currentColor),
                          ),
                        ],
                      ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentColor = Color.fromARGB(
                            255,
                            Random()
                                .nextInt(256), // قيمة اللون الأحمر بين 0 و 255
                            Random()
                                .nextInt(256), // قيمة اللون الأخضر بين 0 و 255
                            Random().nextInt(256),
                          ); // قيمة اللون الأزرق بين 0 و 255;
                        });
                      },
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(150, 163, 163, 163),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.color_lens,
                                color: currentColor, size: 20),
                            Text(
                              'Change Color',
                              style: TextStyle(color: currentColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (textsize == false) {
                            fontsize = 18;

                            textsize = true;
                          } else {
                            fontsize = 28;
                            textsize = false;
                          }
                        });
                      },
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(150, 163, 163, 163),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.format_size,
                                color: currentColor, size: 20),
                            Text(
                              'Change Size',
                              style: TextStyle(color: currentColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                currentValue++;
                if (currentValue % 2 == 0) {
                  numType = 'Even:';
                } else {
                  numType = 'Odd:';
                }
              });
            },
            backgroundColor: currentColor,
            label: Text("Increasment",
                style:
                    TextStyle(color: Colors.white)), // Text inside the button
            icon: Icon(Icons.add, color: Colors.white), // Icon before the text
          ),
        ),
      ),
    );
  }
}
