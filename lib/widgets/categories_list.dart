import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CategoryCard(cardname: 'Business', cardimage: 'assets/business2.png'),
        CategoryCard(
          cardname: 'Entertaiment',
          cardimage: 'assets/technology.jpeg',
        ),
        CategoryCard(cardname: 'General', cardimage: 'assets/general2.png'),
        CategoryCard(cardname: 'Health', cardimage: 'assets/technology.jpeg'),
        CategoryCard(cardname: 'Science', cardimage: 'assets/technology.jpeg'),
        CategoryCard(cardname: 'Sports', cardimage: 'assets/sports2.png'),
        CategoryCard(
          cardname: 'Technology',
          cardimage: 'assets/technology.jpeg',
        ),
      ],
    );
  }
}
