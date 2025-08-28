import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  // for api
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(articleModel.image ??
                  'https://th.bing.com/th?id=OIP.0WZKH9lCcFtu_J8U9UuDEAHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2')),
        ),
        Text(
          articleModel.title,
          style: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModel.subtitle ?? '',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
