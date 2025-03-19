import 'package:flutter/material.dart';
import 'package:languagelearningapp/homeItem.dart';
import 'NumbersPage.dart';
import 'colors.dart';
import 'family.dart';
import 'phrase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Learning App'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ));
              },
              child: homeItem(
                text: 'numbers',
                color: Colors.orange,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMembersPage();
                  },
                ));
              },
              child: homeItem(
                text: 'family member',
                color: Colors.green,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ));
              },
              child: homeItem(
                text: 'colors',
                color: Colors.purple,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const phrasePage();
                  },
                ));
              },
              child: homeItem(
                text: 'phrase',
                color: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
