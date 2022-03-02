import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/pages/404/page_not_found.dart';

class UnknownPage extends Page {
  const UnknownPage() : super(key: const ValueKey('UnknownPage'));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return const PageNotFound();
        });
  }
}
