import 'package:flutter/material.dart';
import 'package:this_is_november_blog/models/post.dart';
import 'package:this_is_november_blog/pages/post/post_view.dart';

class ArticlePage extends Page {
  final PostModel articleModel;
  const ArticlePage({required this.articleModel})
      : super(key: const ValueKey("slugNameArticle"));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return PostView(articleModel);
      },
    );
  }
}
