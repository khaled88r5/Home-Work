import 'package:flutter/material.dart';
import 'package:newsapp/views/home_view.dart';
import 'package:newsapp/services/service.dart';

void main() async {
  runApp(const NewsApp());
  final newsService = NewsService();
  try {
    final newsData = await newsService.getNews();
    print(newsData);
  } catch (e) {
    print('Error: $e');
  }
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
