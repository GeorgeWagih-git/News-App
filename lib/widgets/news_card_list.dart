import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_card.dart';

class NewsCardList extends StatefulWidget {
  const NewsCardList({super.key});

  @override
  State<NewsCardList> createState() => _NewsCardListState();
}

class _NewsCardListState extends State<NewsCardList> {
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
        : SliverList(
          delegate: SliverChildBuilderDelegate(childCount: articles.length, (
            context,
            index,
          ) {
            return NewsCard(articleModel: articles[index]);
          }),
        );
  }
}
