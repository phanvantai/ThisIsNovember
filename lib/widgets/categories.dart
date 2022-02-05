import 'package:flutter/material.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/widgets/sidebar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'Technology',
            numOfItems: 3,
            press: () {},
          ),
          Category(
            title: 'Books',
            numOfItems: 4,
            press: () {},
          ),
          Category(
            title: 'Films',
            numOfItems: 10,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: const TextStyle(color: kPrimaryColorText),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: const TextStyle(color: kSecondaryColorText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
