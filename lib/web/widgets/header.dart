import 'package:flutter/material.dart';
import 'package:this_is_november_blog/core/constants/constants.dart';
import 'package:this_is_november_blog/web/widgets/divider.dart';
import 'package:this_is_november_blog/web/widgets/menu_bar.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              right: kDefaultPadding),
          child: Column(
            children: const [
              MenuBar(),
              divider,
            ],
          ),
        ),
      ),
    );
  }
}
