import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/pages/overview/overview.dart';
import 'package:this_is_november_blog/core/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.overviewPageRoute:
      return _getPageRoute(const OverviewPage());
    case Routes.driversPageRoute:
      return _getPageRoute(const OverviewPage());
    case Routes.clientsPageRoute:
      return _getPageRoute(const OverviewPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
