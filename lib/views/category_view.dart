import 'package:flutter/material.dart';
import 'package:weather_app/widgets/news_list_tile_builder.dart';

class CategoryView extends StatelessWidget {
  final String categoryName;
  const CategoryView({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListTileBuilder(
            categoryName: categoryName,
          ),
        ],
      ),
    );
  }
}
