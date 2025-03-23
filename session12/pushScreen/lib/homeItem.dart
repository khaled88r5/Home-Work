import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String text;
  final Color color;
  final Widget page; // Add a page parameter to navigate to

  const HomeItem({
    required this.text,
    required this.color,
    required this.page, // Make page a required parameter
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the specified page when tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: 450,
        height: 80,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
