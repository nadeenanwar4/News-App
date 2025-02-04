import 'package:flutter/material.dart';
import 'package:weather_app/models/category_model.dart';
import 'package:weather_app/widgets/category_card.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(
        imgPath: "assets/images/business.jpeg",
        title: "Business",
        categoryName: 'business'),
    CategoryModel(
        imgPath: "assets/images/entertainment.jpeg",
        title: "Entertainment",
        categoryName: 'art'),
    CategoryModel(
        imgPath: "assets/images/health.jpeg",
        title: "Health",
        categoryName: 'health'),
    CategoryModel(
        imgPath: "assets/images/science.jpeg",
        title: "Science",
        categoryName: 'science'),
    CategoryModel(
        imgPath: "assets/images/sports.jpg",
        title: "Sports",
        categoryName: 'sports'),
    CategoryModel(
        imgPath: "assets/images/technology.jpeg",
        title: "Technology",
        categoryName: 'technology'),
    CategoryModel(
        imgPath: "assets/images/general.jpeg",
        title: "General",
        categoryName: 'egypt'),
  ];

  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
      ),
    );
  }
}
