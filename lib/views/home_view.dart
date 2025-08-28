import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/categories_list.dart';
import 'package:news_app_ui_setup/widgets/new_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_builder.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Color.fromARGB(255, 230, 184, 106)),
              ),
            ],
          )),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoriesList()),
          SliverToBoxAdapter(
              child: NewsListViewApiRequestBuilder(
            category: 'general',
          )),
        ],
      ),

      // const Column(
      //   children: [
      //     CategoriesList() ,
      //     Expanded(child: NewsListView())
      //   ],
      // )
      // // const CategoriesList()
      // const NewsListView()
    );
  }
}
