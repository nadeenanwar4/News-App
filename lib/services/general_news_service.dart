import 'package:dio/dio.dart';
import 'package:weather_app/models/news_model.dart';

class NewsService {
  final dio = Dio();
  Future<List<NewsModel>> getGeneralNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/everything?apiKey=3bd05334b10143609d0d26204f6374a0&language=ar&q=egypt");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articlesData = jsonData["articles"];
    List<NewsModel> articles = [];
    for (var article in articlesData) {
      articles.add(NewsModel(
          subTitle: article["description"],
          imgPath: article["urlToImage"],
          title: article["title"]));
    }
    return articles;
    // return articlesData;
  }
}
