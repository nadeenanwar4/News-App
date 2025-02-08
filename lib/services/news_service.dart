import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/models/news_model.dart';

class NewsService {
  final dio = Dio();
  final String baseUrl = "https://newsapi.org/v2";
  final String apiKey = dotenv.env["API_KEY"]!;

  Future<List<NewsModel>> getNews({required String categoryName}) async {
    try {
      Response response = await dio.get(
          "$baseUrl/everything?apiKey=$apiKey&language=ar&q=$categoryName");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articlesData = jsonData["articles"];
      List<NewsModel> articles = [];
      for (var article in articlesData) {
        articles.add(NewsModel.fromJson(article));
      }
      return articles;
    } catch (e) {
      return [];
    }
  }
}
