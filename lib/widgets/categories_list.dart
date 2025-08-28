import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/first_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  final List<CategoryModel> values = const [
    CategoryModel(image: 'assets/business.avif', text: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Entertaiment'),
    CategoryModel(image: 'assets/general.avif', text: 'General'),
    CategoryModel(image: 'assets/health.avif', text: 'Health'),
    CategoryModel(image: 'assets/science.avif', text: 'Science'),
    CategoryModel(image: 'assets/sports.avif', text: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', text: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
      itemCount: values.length ,
      itemBuilder: (context , index)
      {
        return  CategoryItem(
          value: values[index],
        ) ; 
      }
      ),
    );
  }
}