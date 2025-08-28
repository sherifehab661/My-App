import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio = Dio() ;
  // NewsService(this.dio);
  
  // await + async because its news from internt and it takes time to load 
  //so we use async and await 
  // Response is used with dio package to return the data  
  // this is the method to return the values of dio 
  // when u work with http u should transfer data to json 
  
  Future<List<ArticleModel>> getNews({required String category}) async {
  try {
  Response response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=63b4fbdf9f7749918bbb30e99271a93b&category=$category'
  ) ;
  Map<String,dynamic> jsonData =  response.data;
  
  List<dynamic> articles = jsonData['articles'] ;
  
  List<ArticleModel> articleList = [] ;
  
  for (var article in articles) {
  
    ArticleModel articleModel = ArticleModel.fromJson(article) ; 
    
  
    articleList.add(articleModel);
  }
  // print(articleList) ;
  return articleList ;
}  catch (e) {
  return [] ;
}
}
}


