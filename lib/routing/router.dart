import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/pages/overview/overview.dart';
import 'package:this_is_november_blog/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.overviewPageRoute:
      return _getPageRoute(OverviewPage());
    case Routes.driversPageRoute:
      return _getPageRoute(OverviewPage());
    case Routes.clientsPageRoute:
      return _getPageRoute(OverviewPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
