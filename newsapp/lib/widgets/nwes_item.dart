import 'package:flutter/material.dart';
import 'package:newsapp/constants/assets.dart';
import 'package:newsapp/views/news_article_view.dart';

class NwesItem extends StatelessWidget {
  String? image;
  final String title;
  String? substring = 'no subtitle';
  final String content;
  NwesItem({
    super.key,
    required this.image,
    required this.title,
    required this.substring,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NewsArticleView(
              title: title,
              image: image,
              content: content,
            );
          }));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              style: const TextStyle(color: Colors.black),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              substring!,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.grey,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
