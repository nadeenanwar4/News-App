import 'package:flutter/material.dart';
import 'package:weather_app/models/news_model.dart';
import 'package:weather_app/services/news_service.dart';
import 'package:weather_app/widgets/news_list_tile.dart';

class NewsListTileBuilder extends StatefulWidget {
  final String categoryName;
  const NewsListTileBuilder({super.key, required this.categoryName});

  @override
  State<NewsListTileBuilder> createState() => _NewsListTileBuilderState();
}

class _NewsListTileBuilderState extends State<NewsListTileBuilder> {
  var futureData;

  @override
  void initState() {
    super.initState();
    futureData = NewsService().getNews(categoryName: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListTile(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text(
                  "There has been an error, Try again later",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 64,
                  ),
                ),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
