import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_list.dart';

class NewsCardListBuilder extends StatefulWidget {
  const NewsCardListBuilder({super.key});

  @override
  State<NewsCardListBuilder> createState() => _NewsCardListBuilderState();
}

class _NewsCardListBuilderState extends State<NewsCardListBuilder> {
  List<ArticleModel> articles = [];
  bool isloading = true;
  @override
  void initState() {
    getnews();
    super.initState();
  }

  Future<void> getnews() async {
    articles = await NewsService(Dio()).getGeneralNews();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : NewsList(articles: articles);
  }
}
