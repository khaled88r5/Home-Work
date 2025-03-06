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
        backgroundColor: Colors.white, // Background color
        body: Center(
          child: Container(
            width: 380,
            height: 390,
            color: const Color.fromARGB(255, 153, 226, 255),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: LetterBox(letter: 'A', color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: LetterBox(letter: 'B', color: Colors.orange),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: LetterBox(letter: 'C', color: Colors.yellow),
                    )
                  ],
                ),
                Container(
                  width: 300,
                  height: 160,
                  color: const Color.fromARGB(148, 247, 190, 209),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'fancy section',
                          style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ColorNumBox(
                              number: '1',
                              color: const Color.fromARGB(255, 163, 10, 234)),
                          ColorNumBox(
                              number: '2',
                              color: const Color.fromARGB(255, 75, 0, 103)),
                          ColorNumBox(
                              number: '3',
                              color: const Color.fromARGB(158, 120, 30, 190)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ColorNumBox(
                              number: '4',
                              color: const Color.fromARGB(255, 91, 8, 215)),
                          ColorNumBox(
                              number: '5',
                              color: const Color.fromARGB(156, 13, 20, 150)),
                          ColorNumBox(
                              number: '6',
                              color: const Color.fromARGB(255, 212, 54, 244)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Info Cards',
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  whiteNumBox(
                    text: 'Active',
                    color: Colors.green,
                    number: '23',
                  ),
                  whiteNumBox(
                      text: 'pading', color: Colors.orange, number: '15'),
                  whiteNumBox(text: 'Active', color: Colors.green, number: '7'),
                ])
              ],
            ),
          ),
        ));
  }
}

class LetterBox extends StatelessWidget {
  const LetterBox({
    Key? key,
    required this.letter,
    required this.color,
  }) : super(key: key);

  final String letter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      color: color,
      child: Center(
        child: Text(
          letter,
          style: TextStyle(
              fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}

class ColorNumBox extends StatelessWidget {
  const ColorNumBox({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);

  final String number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 40,
        height: 40,
        color: color,
        // Space between boxes
        child: Center(
          child: Text(
            number,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class whiteNumBox extends StatelessWidget {
  const whiteNumBox({
    Key? key,
    required this.text,
    required this.color,
    required this.number,
  }) : super(key: key);

  final String text;
  final String number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 70,
        height: 70,
        color: Colors.white,
        // Space between boxes
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            number,
            style: TextStyle(fontSize: 18, color: color),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: color),
          )
        ]),
      ),
    );
  }
}
