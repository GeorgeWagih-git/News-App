import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories_list.dart';
import 'package:newsapp/widgets/news_card_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: const Color.fromARGB(255, 199, 150, 3),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesList()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            NewsCardList(),
          ],
        ),
      ),
    );
  }
}
