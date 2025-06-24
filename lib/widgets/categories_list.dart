import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = [
      CategoryModel(cardname: 'Business', cardimage: 'assets/business2.png'),
      CategoryModel(
        cardname: 'Entertaiment',
        cardimage: 'assets/technology.jpeg',
      ),
      CategoryModel(cardimage: 'assets/general2.png', cardname: 'General'),
      CategoryModel(cardname: 'Health', cardimage: 'assets/technology.jpeg'),
      CategoryModel(cardname: 'Science', cardimage: 'assets/technology.jpeg'),
      CategoryModel(cardname: 'Sports', cardimage: 'assets/sports2.png'),
      CategoryModel(
        cardname: 'Technology',
        cardimage: 'assets/technology.jpeg',
      ),
    ];

    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryCard(model: categories[index]);
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
