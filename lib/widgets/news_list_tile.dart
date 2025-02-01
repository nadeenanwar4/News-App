import 'package:flutter/material.dart';
import 'package:weather_app/widgets/news_tile.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile();
        },
        childCount: 10,
      ),
    );
  }
}
