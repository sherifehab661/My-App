import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.value});

  final CategoryModel value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return CategoryView(
              category: value.text,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Container(
          width: 165,
          height: 95,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(value.image)),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              value.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
