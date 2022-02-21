import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';
import 'package:this_is_november_blog/helpers/reponsive.dart';
import 'package:this_is_november_blog/models/page.dart';
import 'package:this_is_november_blog/pages/home/home_view.dart';
import 'package:this_is_november_blog/pages/post/post_view.dart';
import 'package:this_is_november_blog/routing/routes.dart';
import 'package:this_is_november_blog/widgets/header.dart';
import 'package:this_is_november_blog/widgets/side_menu.dart';

class MainPage extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      endDrawer: SideMenu(),
      //extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: const Header(),
        preferredSize: Responsive.isDesktop(context)
            ? const Size.fromHeight(68)
            : const Size.fromHeight(68),
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
