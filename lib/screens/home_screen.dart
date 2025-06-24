import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/widgets/categories_list.dart';
import 'package:newsapp/widgets/news_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150, child: CategoriesList()),
            NewsCard(
              newsModel: NewsModel(
                image: 'assets/cliprrect.png',
                title:
                    'The simplest and most efficient way to center the title in an AppBar is by using the centerTitle property. This property, when set to true, aligns the title centrally on both Android and iOS platforms',
                newtext:
                    'For more complex layouts, such as when incorporating logos or images, consider wrapping your title in a ConstrainedBox or using a Row widget to manage layout intricacies.',
              ),
            ),
            NewsCard(
              newsModel: NewsModel(
                image: 'assets/maxresdefault.jpg',
                title:
                    'By leveraging the centerTitle property and advanced layout techniques, you can ensure that your AppBar title is perfectly centered, enhancing the user experience across different platforms. For further insights into Flutter development and UI customization, explore our comprehensive guide on making your Flutter app responsive across different screen sizes.',

                newtext:
                    'When it comes to testing your Flutter applications, using a tool like Repeato can significantly streamline the process. As a no-code test automation tool, Repeato allows for fast editing and running of tests, using computer vision and AI to ensure your app maintains its functionality and design integrity. Whether you are adjusting app layouts or implementing new features, Repeato helps ensure everything works seamlessly.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
