import 'package:cached_network_image/cached_network_image.dart';
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
                imageUrl: newsData.imgPath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) {
                  print("the image error message is: $error");
                  return Image.asset("assets/images/error.jpeg");
                }
                // Image.asset("assets/images/error.jpeg"),
                ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 200,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image:
          //   NetworkImage(
          //           newsData.imgPath ?? "assets/images/error.jpeg"),
          //       fit: BoxFit.fill,
          //     ),
          //     borderRadius: BorderRadius.circular(8),
          //     color: Colors.blueAccent,
          //   ),
          // ),
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
