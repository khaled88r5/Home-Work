import 'package:dio/dio.dart';
import 'package:newsapp/widgets/nwes_item.dart';

class NewsService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://newsapi.org/v2';
  final String _apiKey = '78e50e7919044f1cbe6e3185186a6e25';

  Future<List<NwesItem>> getNews(
      {String country = 'us', String category = 'general'}) async {
    final response = await _dio.get(
      '$_baseUrl/top-headlines',
      queryParameters: {
        'apiKey': _apiKey,
        'country': country,
        'category': category,
      },
    );
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<NwesItem> articlesList = [];
    for (var article in articles) {
      articlesList.add(NwesItem(
        image: article['urlToImage'],
        title: article['title'],
        substring: article['description'] ?? 'no subtitle',
        content: article['content'] ?? 'no content',
      ));
    }

    return articlesList;
  }
}
