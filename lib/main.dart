import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/models/page.dart';
import 'package:this_is_november_blog/pages/home/home_view.dart';
import 'package:this_is_november_blog/pages/post/post_view.dart';
import 'package:this_is_november_blog/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This is November',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kPrimaryColorText),
          bodyText2: TextStyle(color: kPrimaryColorText),
          headline5: TextStyle(color: kSecondaryColorText),
        ),
      ),
      initialRoute: Routes.home,
      onGenerateRoute: (settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return HomeView();
            case Routes.post:
              return PostView(PageModel.sample.last);
            case Routes.style:
              return const SizedBox.shrink(); //TypographyPage();
            default:
              return const SizedBox.shrink();
          }
        });
      },
    );
  }
}
