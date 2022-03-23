import 'package:flutter/material.dart';
import 'package:this_is_november_blog/web/pages/main_page.dart';

class CategoryPage extends Page {
  //final PostModel articleModel;
  const CategoryPage() : super(key: const ValueKey("categoryPage"));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return MainPage();
      },
    );
  }
}
