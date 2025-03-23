import 'package:flutter/material.dart';
import 'package:languagelearningapp/HomeItem.dart';
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
            HomeItem(
              text: 'numbers',
              color: Colors.orange,
              page: NumbersPage(),
            ),
            HomeItem(
              text: 'family member',
              color: Colors.green,
              page: FamilyMembersPage(),
            ),
            HomeItem(
              text: 'colors',
              color: Colors.purple,
              page: ColorsPage(),
            ),
            HomeItem(
              text: 'phrase',
              color: Colors.cyan,
              page: phrasePage(),
            ),
          ],
        ),
      ),
    );
  }
}
