import 'dart:async';

import 'package:flutter/material.dart';
import 'package:this_is_november_blog/routing/blog_route_path.dart';
import 'package:this_is_november_blog/routing/routes.dart';

class BlogRouteInformationParser extends RouteInformationParser<BlogRoutePath> {
  @override
  Future<BlogRoutePath> parseRouteInformation(
      RouteInformation routeInformation) {
    debugPrint(routeInformation.toString());
    var completer = Completer<BlogRoutePath>();
    if (routeInformation.location == null) {
      completer.complete(BlogRoutePath.unknown());
      return completer.future;
    }
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      completer.complete(BlogRoutePath.home());
      return completer.future;
    }

    if (uri.pathSegments.length == 1) {
      debugPrint(uri.path);
      final pathName = uri.pathSegments.elementAt(0).toString();
      if (pathName.isEmpty) {
        completer.complete(BlogRoutePath.unknown());
        return completer.future;
      }
      completer.complete(BlogRoutePath.otherPage(pathName));
      return completer.future;
    }

    completer.complete(BlogRoutePath.unknown());
    return completer.future;
  }

  @override
  RouteInformation? restoreRouteInformation(BlogRoutePath configuration) {
    if (configuration.isUnknown) {
      return const RouteInformation(location: Routes.errorRoute);
    }
    if (configuration.isHomePage) {
      return const RouteInformation(location: Routes.homeRoute);
    }
    if (configuration.isOtherPage) {
      return RouteInformation(location: '/${configuration.pathName}');
    }

    return null;
  }
}
