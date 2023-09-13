import 'dart:convert';

import '../../models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  // List<CategorieModel> Categorie = [];
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=26dcf05c1a7e49379e88a6eec81113fe");

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element["title"],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["context"],
          );

          news.add(articleModel);
        }
      });
    }
  }
}
