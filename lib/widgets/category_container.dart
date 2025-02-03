import 'package:flutter/material.dart';
import 'package:weather_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  CategoryModel categoryModel;
  CategoryCard({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 220,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blueAccent,
          image: DecorationImage(
            image: AssetImage(categoryModel.imgPath),
            fit: BoxFit.fill,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          categoryModel.title,
          style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
