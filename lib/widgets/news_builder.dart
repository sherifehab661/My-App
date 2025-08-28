import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/new_list_view.dart';

class NewsListViewApiRequestBuilder extends StatefulWidget {
  
  
  final String category ;

  const NewsListViewApiRequestBuilder({super.key, required this.category});
  @override
  State<NewsListViewApiRequestBuilder> createState() => _NewsListViewApiRequestBuilderState();
}
  
class _NewsListViewApiRequestBuilderState extends State<NewsListViewApiRequestBuilder> {
  // List <ArticleModel> articles = [] ;
  var future ;
  @override
  void initState() {
  future = NewsService().getNews(
    category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future   , 
      builder: (context , Snapshot)
    {
      if (Snapshot.hasData) {
  return NewsListView(articles: Snapshot.data?? [] ,) ;
}
    else if (Snapshot.hasError)
    {
      return const  Text('oops Error ') ;
    }
    else 
    {
      return const  Center(
        child: CircularProgressIndicator()) ;
    }
    }) ;
    
    // return isLoading ? const  Center(
    //   child: const CircularProgressIndicator()) : 
    //   articles.isNotEmpty ? NewsListView(
    //   articles: articles, 
    // ) : Text('oops Error ')  ; 
  }
}