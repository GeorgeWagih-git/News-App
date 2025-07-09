import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  getGeneralNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }

  getBusinessNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=business&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }

  getEntertainmentNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=entertainment&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }

  getHealthNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=health&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }

  getScienceNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=science&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }

  getSportsNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=sports&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }

  getTechnologyNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=technology&apiKey=277b751d41ae4fc88afc9fd741990638',
    );
    return response;
  }
}
