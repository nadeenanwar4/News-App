import 'package:flutter/material.dart';
import 'package:weather_app/models/news_model.dart';

class NewsTile extends StatelessWidget {
  final NewsModel newsData;
  const NewsTile({
    super.key,
    required this.newsData,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    newsData.imgPath ?? "assets/images/error.jpeg"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(8),
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            newsData.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            newsData.subTitle ?? "",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
