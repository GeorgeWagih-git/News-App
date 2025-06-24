import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CategoryCard(
          model: CategoryModel(
            cardname: 'Business',
            cardimage: 'assets/business2.png',
          ),
        ),
        CategoryCard(
          model: CategoryModel(
            cardname: 'Entertaiment',
            cardimage: 'assets/technology.jpeg',
          ),
        ),
        CategoryCard(
          model: CategoryModel(
            cardimage: 'assets/general2.png',
            cardname: 'General',
          ),
        ),
        CategoryCard(
          model: CategoryModel(
            cardname: 'Health',
            cardimage: 'assets/technology.jpeg',
          ),
        ),
        CategoryCard(
          model: CategoryModel(
            cardname: 'Science',
            cardimage: 'assets/technology.jpeg',
          ),
        ),
        CategoryCard(
          model: CategoryModel(
            cardname: 'Sports',
            cardimage: 'assets/sports2.png',
          ),
        ),
        CategoryCard(
          model: CategoryModel(
            cardname: 'Technology',
            cardimage: 'assets/technology.jpeg',
          ),
        ),
      ],
    );
  }
}
