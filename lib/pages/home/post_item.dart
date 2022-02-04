import 'package:flutter/material.dart';
import 'package:this_is_november_blog/constants/spacing.dart';
import 'package:this_is_november_blog/constants/typography.dart';
import 'package:this_is_november_blog/models/post.dart';
import 'package:this_is_november_blog/routing/routes.dart';
import 'package:this_is_november_blog/widgets/image_wrapper.dart';
import 'package:this_is_november_blog/widgets/read_more_button.dart';

class PostItemView extends StatelessWidget {
  final PostModel model;

  const PostItemView(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (model.image != null)
          ImageWrapper(
            image: model.image!,
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: marginBottom12,
            child: Text(
              model.title,
              style: headlineTextStyle,
            ),
          ),
        ),
        if (model.description != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: marginBottom12,
              child: Text(
                model.description!,
                style: bodyTextStyle,
              ),
            ),
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: marginBottom24,
            child: ReadMoreButton(
              onPressed: () => Navigator.pushNamed(context, Routes.post),
            ),
          ),
        ),
      ],
    );
  }
}
