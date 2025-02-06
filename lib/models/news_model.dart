class NewsModel {
  final String imgPath;
  final String title;
  final String? subTitle;

  const NewsModel(
      {required this.subTitle, required this.imgPath, required this.title});

  factory NewsModel.fromJson(json) {
    return NewsModel(
        subTitle: json["description"],
        imgPath: json["urlToImage"],
        title: json["title"]);
  }
}
