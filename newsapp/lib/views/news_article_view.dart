import 'package:flutter/material.dart';
import 'package:newsapp/constants/assets.dart';

class NewsArticleView extends StatelessWidget {
  final String title;
  final String? image;
  final String content;

  const NewsArticleView({
    Key? key,
    required this.title,
    required this.image,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: (image == null)
                      ? AssetImage(Assets.assetsNoImagePlaceholderSvg)
                      : NetworkImage(image!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color.fromARGB(255, 214, 0, 0), fontSize: 28),
            ),
            Text(
              content,
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
