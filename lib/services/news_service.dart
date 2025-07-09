import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getGeneralNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }

  Future<List<ArticleModel>> getBusinessNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=business&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }

  Future<List<ArticleModel>> getEntertainmentNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=entertainment&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }

  Future<List<ArticleModel>> getHealthNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=health&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }

  Future<List<ArticleModel>> getScienceNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=science&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }

  Future<List<ArticleModel>> getSportsNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=sports&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }

  Future<List<ArticleModel>> getTechnologyNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=technology&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articleModels = [];
    for (var article in articles) {
      articleModels.add(
        ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ),
      );
    }

    return articleModels;
  }
}
