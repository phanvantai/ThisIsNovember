import 'package:flutter/material.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/widgets/menu_bar.dart';
import 'package:this_is_november_blog/widgets/divider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              MenuBar(),
              divider,
            ],
          ),
        ),
      ),
    );
  }
}
