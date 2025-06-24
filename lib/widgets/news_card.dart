import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(newsModel.image, fit: BoxFit.fill),
        ),
        SizedBox(height: 12),
        Text(
          newsModel.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          newsModel.newtext,
          style: TextStyle(fontSize: 20, color: Colors.blueGrey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
