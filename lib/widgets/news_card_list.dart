import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/widgets/news_card.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    List<NewsModel> news = [
      NewsModel(
        image: 'assets/cliprrect.png',
        title:
            'The simplest and most efficient way to center the title in an AppBar is by using the centerTitle property. This property, when set to true, aligns the title centrally on both Android and iOS platforms',
        newtext:
            'For more complex layouts, such as when incorporating logos or images, consider wrapping your title in a ConstrainedBox or using a Row widget to manage layout intricacies.',
      ),
      NewsModel(
        image: 'assets/maxresdefault.jpg',
        title:
            'By leveraging the centerTitle property and advanced layout techniques, you can ensure that your AppBar title is perfectly centered, enhancing the user experience across different platforms. For further insights into Flutter development and UI customization, explore our comprehensive guide on making your Flutter app responsive across different screen sizes.',

        newtext:
            'When it comes to testing your Flutter applications, using a tool like Repeato can significantly streamline the process. As a no-code test automation tool, Repeato allows for fast editing and running of tests, using computer vision and AI to ensure your app maintains its functionality and design integrity. Whether you are adjusting app layouts or implementing new features, Repeato helps ensure everything works seamlessly.',
      ),
    ];
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: news.length, (
        context,
        index,
      ) {
        return NewsCard(newsModel: news[index]);
      }),
    );
  }
}
