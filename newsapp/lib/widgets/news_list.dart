import 'package:flutter/material.dart';
import 'package:newsapp/widgets/nwes_item.dart';

class NewsListView extends StatelessWidget {
  final String category;
  final List<NwesItem> newsItems;

  NewsListView({
    this.category = 'general',
    required this.newsItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return newsItems[index];
        },
        childCount: newsItems.length,
      ),
    );
  }
}
