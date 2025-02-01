import 'package:flutter/material.dart';
import 'package:weather_app/widgets/app_bar_title.dart';
import 'package:weather_app/widgets/category_list.dart';
import 'package:weather_app/widgets/news_list_tile.dart';
import 'package:weather_app/widgets/newslisttile_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(),
        backgroundColor: Colors.white,
        elevation: 0.7,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: CustomScrollView(
          //physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryList()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 28,
              ),
            ),
            NewsListTileBuilder(),
          ],
        ),
      ),
    );
  }
}
