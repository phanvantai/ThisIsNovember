import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:this_is_november_blog/core/helpers/reponsive.dart';
import 'package:this_is_november_blog/core/routing/routes.dart';
import 'package:this_is_november_blog/web/controllers/menu_controller.dart';
import 'package:this_is_november_blog/web/models/page.dart';
import 'package:this_is_november_blog/web/pages/home/home_view.dart';
import 'package:this_is_november_blog/web/pages/post/post_view.dart';
import 'package:this_is_november_blog/web/widgets/header.dart';
import 'package:this_is_november_blog/web/widgets/side_menu.dart';

class MainPage extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      endDrawer: const SideMenu(),
      //extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Responsive.isDesktop(context)
            ? const Size.fromHeight(68)
            : const Size.fromHeight(68),
        child: const Header(),
      ),
      // push to other
      // _navigatorKey.currentState.pushNamed('/yourRouteName');
      body: Navigator(
        key: _navigatorKey,
        initialRoute: Routes.homeRoute,
        onGenerateRoute: (settings) {
          return Routes.fadeThrough(settings, (context) {
            switch (settings.name) {
              case Routes.homeRoute:
                return HomeView(PageModel(0, PageModel.sample));
              case Routes.postRoute:
                return PostView(PageModel.sample.last);
              default:
                return const SizedBox.shrink();
            }
          });
        },
      ),
    );
  }
}
