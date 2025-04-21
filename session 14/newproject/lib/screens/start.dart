import 'package:flutter/material.dart';
import 'package:newproject/screens/quiz.dart';
import 'package:newproject/constants/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), // Use a separate home widget
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFF504173), // Inner color
              Color(0xFF060B26), // Outer color
            ],
            center: Alignment.center,
            radius: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Good morning,',
                style: AppTextStyles.h3, // Ensure this exists in styles.dart
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10.0),
              child: Text(
                'New topic is waiting',
                style: AppTextStyles.h1, // Ensure this exists in styles.dart
              ),
            ),
            Spacer(), // Replaces SizedBox(height: 650) to be more flexible
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: double.infinity, // Makes button responsive
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some bottom spacing
          ],
        ),
      ),
    );
  }
}
