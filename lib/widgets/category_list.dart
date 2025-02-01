import 'package:flutter/material.dart';
import 'package:weather_app/models/category_model.dart';
import 'package:weather_app/widgets/category_container.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(imgPath: "assets/images/business.jpeg", title: "Business"),
    CategoryModel(
        imgPath: "assets/images/entertainment.jpeg", title: "Entertainment"),
    CategoryModel(imgPath: "assets/images/general.jpeg", title: "General"),
    CategoryModel(imgPath: "assets/images/health.jpeg", title: "Health"),
    CategoryModel(imgPath: "assets/images/science.jpeg", title: "Science"),
    CategoryModel(imgPath: "assets/images/sports.jpg", title: "Sports"),
    CategoryModel(
        imgPath: "assets/images/technology.jpeg", title: "Technology"),
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
          return CategoryContainer(categoryModel: categories[index]);
        },
      ),
    );
  }
}
