import 'package:flutter/material.dart';
import 'package:newsapp/views/news_listview_builder.dart';

class ctegory_news extends StatelessWidget {
  final String name;
  const ctegory_news({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            listviewbuilder(category: name),
          ],
        ),
      ),
    );
  }
}
