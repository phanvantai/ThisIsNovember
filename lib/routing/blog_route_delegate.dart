import 'package:flutter/material.dart';
import 'package:this_is_november_blog/routing/blog_route_path.dart';

class BlogRouterDelegate extends RouterDelegate<BlogRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BlogRoutePath> {
  String? pathName;
  bool isError = false;
  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        pages: [
          MaterialPage(
            key: ValueKey('HomePage'),
            child: Container(),
          ),
          if (isError)
            MaterialPage(key: ValueKey('UnknownPage'), child: Container())
          else if (pathName != null)
            MaterialPage(key: ValueKey(pathName), child: Container())
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) return false;

          pathName = null;
          isError = false;
          notifyListeners();

          return true;
        });
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(BlogRoutePath configuration) async {
    if (configuration.isUnknown) {
      pathName = null;
      isError = true;
      return;
    }

    if (configuration.isOtherPage) {
      if (configuration.pathName != null) {
        pathName = configuration.pathName;
        isError = false;
        return;
      } else {
        isError = true;
        return;
      }
    } else {
      pathName = null;
    }
  }

  @override
  BlogRoutePath? get currentConfiguration {
    if (isError) return BlogRoutePath.unknown();

    if (pathName == null) return BlogRoutePath.home();

    return BlogRoutePath.otherPage(pathName);
  }

  void onTapped(String path) {
    pathName = path;
    debugPrint(pathName);
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
