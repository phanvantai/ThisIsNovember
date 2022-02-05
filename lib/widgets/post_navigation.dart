import 'package:flutter/material.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/constants/typography.dart';

class PostNavigation extends StatelessWidget {
  // TODO Get PostID from Global Routing Singleton.
  // Example: String currentPage = RouteController.of(context).currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(
              Icons.keyboard_arrow_left,
              size: 25,
              color: kSecondaryColorText,
            ),
            Text("PREVIOUS POST", style: buttonTextStyle),
          ],
        ),
        const Spacer(),
        Row(
          children: <Widget>[
            Text("NEXT POST", style: buttonTextStyle),
            const Icon(
              Icons.keyboard_arrow_right,
              size: 25,
              color: kSecondaryColorText,
            ),
          ],
        )
      ],
    );
  }
}
