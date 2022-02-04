import 'package:flutter/material.dart';
import 'package:this_is_november_blog/constants/color.dart';
import 'package:this_is_november_blog/constants/typography.dart';
import 'package:this_is_november_blog/models/page.dart';

class PagesNavigation extends StatelessWidget {
  final PageModel model;
  const PagesNavigation(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //if (model.next != null)
        Row(
          children: <Widget>[
            Icon(
              Icons.keyboard_arrow_left,
              size: 25,
              color: textSecondary,
            ),
            Text("NEWER POSTS", style: buttonTextStyle),
          ],
        ),
        const Spacer(),
        //if (model.previous != null)
        Row(
          children: <Widget>[
            Text("OLDER POSTS", style: buttonTextStyle),
            Icon(
              Icons.keyboard_arrow_right,
              size: 25,
              color: textSecondary,
            ),
          ],
        )
      ],
    );
  }
}
