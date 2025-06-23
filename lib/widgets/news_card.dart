import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.image,
    required this.title,
    required this.newtext,
  });
  final String image;
  final String title;
  final String newtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(image, fit: BoxFit.fill),
          ),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            newtext,
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
