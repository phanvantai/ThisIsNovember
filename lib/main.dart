import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';
import 'package:this_is_november_blog/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MaterialApp(
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
        home: MainPage(),
      ),
    );
  }
}
