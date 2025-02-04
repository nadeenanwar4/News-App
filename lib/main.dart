import 'package:flutter/material.dart';
import 'package:weather_app/views/business_category_view.dart';
import 'package:weather_app/views/entertainment_category_view.dart';
import 'package:weather_app/views/health_category_view.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/views/science_category_view.dart';
import 'package:weather_app/views/sports_category_view.dart';
import 'package:weather_app/views/technology_category_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/businessView": (context) => BusinessView(),
        "/entertainmentView": (context) => EntertainmentView(),
        "/healthView": (context) => HealthView(),
        "/scienceView": (context) => ScienceView(),
        "/sportsView": (context) => SportsView(),
        "/technologyView": (context) => TechnologyView(),
        "/generalView": (context) => HomePage(),
      },
    );
  }
}
