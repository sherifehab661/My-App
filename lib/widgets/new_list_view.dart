import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';



class NewsListView extends StatelessWidget {

  final List <ArticleModel> articles  ; 
  const NewsListView({super.key, required this.articles });
  // u should extract the method because init state doesnt work with async 
  

@override
  Widget build(BuildContext context) {
    //  u cant put a method inside a build method 
    // NewsService().getNews();
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: articles.length,
      itemBuilder:  (context , index )
    {
      return  NewsTile(
        articleModel: articles[index],
      ) ;
    }
    );
  }
}