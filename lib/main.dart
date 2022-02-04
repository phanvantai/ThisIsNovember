import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:this_is_november_blog/models/page.dart';
import 'package:this_is_november_blog/pages/home/home.dart';
import 'package:this_is_november_blog/pages/post/post_view.dart';
import 'package:this_is_november_blog/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1600,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return HomePage(PageModel(0, PageModel.sample));
            case Routes.post:
              return PostView(PageModel.sample.last);
            case Routes.style:
              return const SizedBox.shrink(); //TypographyPage();
            default:
              return const SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
