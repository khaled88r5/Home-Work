import 'package:flutter/material.dart';
import 'package:newsapp/services/service.dart';
import 'package:newsapp/widgets/news_list.dart';

class listviewbuilder extends StatelessWidget {
  final String category;
  const listviewbuilder({super.key, this.category = 'general'});

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService().getNews(category: category),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return NewsListView(newsItems: snapshot.data!);
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    // return isLoading
    //     ? SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : NewsListView();
  }
}
