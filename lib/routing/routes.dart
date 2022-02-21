import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(Routes.overviewPageDisplayName, Routes.overviewPageRoute),
  MenuItem(Routes.driversPageDisplayName, Routes.driversPageRoute),
  MenuItem(Routes.clientsPageDisplayName, Routes.clientsPageRoute),
  MenuItem(
      Routes.authenticationPageDisplayName, Routes.authenticationPageRoute),
];

class Routes {
  static const homeRoute = "/";
  static const postRoute = "/post";
  static const errorRoute = "/page-not-found";

  static const adminRoute = "/admin";

  static const overviewPageDisplayName = "Overview";
  static const overviewPageRoute = "/overview";

  static const driversPageDisplayName = "Drivers";
  static const driversPageRoute = "/drivers";

  static const clientsPageDisplayName = "Clients";
  static const clientsPageRoute = "/clients";

  static const authenticationPageDisplayName = "Log out";
  static const authenticationPageRoute = "/auth";

  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}
