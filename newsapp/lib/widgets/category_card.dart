import 'package:flutter/material.dart';
import 'package:newsapp/views/category_news.dart';

class category_card extends StatelessWidget {
  final String image;
  final String name;
  const category_card({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ctegory_news(name: name),
            ),
          );
        },
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
