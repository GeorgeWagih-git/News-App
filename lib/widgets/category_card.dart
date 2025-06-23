import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.cardname,
    required this.cardimage,
  });
  final String cardname;
  final String cardimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 220,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(cardimage), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          cardname,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
