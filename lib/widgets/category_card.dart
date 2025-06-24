import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 220,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.cardimage),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          model.cardname,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
