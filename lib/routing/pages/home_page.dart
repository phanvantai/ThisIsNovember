import 'package:flutter/material.dart';
import 'package:this_is_november_blog/pages/main_page.dart';

class HomePage extends Page {
  const HomePage() : super(key: const ValueKey('HomePage'));
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this,
        builder: (context) {
          return MainPage();
        });
  }
}
