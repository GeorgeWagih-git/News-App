import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
            articleModel.image ??
                'https://static.thenounproject.com/png/482114-200.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 12),
        Text(
          articleModel.title ?? '',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModel.subTitle ?? '',
          style: TextStyle(fontSize: 20, color: Colors.blueGrey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 32),
      ],
    );
  }
}
