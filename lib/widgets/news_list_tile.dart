import 'package:flutter/material.dart';
import 'package:weather_app/models/news_model.dart';
import 'package:weather_app/widgets/news_tile.dart';

class NewsListTile extends StatelessWidget {
  final List<NewsModel> articles;
  const NewsListTile({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            newsData: articles[index],
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
