import 'package:flutter/material.dart';

import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/constants/typography.dart';
import 'package:this_is_november_blog/models/post.dart';
import 'package:this_is_november_blog/routing/routes.dart';
import 'package:this_is_november_blog/widgets/divider.dart';
import 'package:this_is_november_blog/widgets/image_wrapper.dart';
import 'package:this_is_november_blog/widgets/read_more_button.dart';

class PostCard extends StatelessWidget {
  final PostModel model;
  const PostCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.image != null)
            ImageWrapper(
              image: model.image!,
            ),
          Container(
            margin: marginBottom12,
            child: Row(
              children: [
                Text(
                  model.category.toUpperCase(),
                  style: const TextStyle(
                    color: kPrimaryColorText,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: kDefaultPadding),
                Text(
                  model.date,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          Container(
            margin: marginBottom12,
            child: Text(
              model.title,
              style: headlineTextStyle,
            ),
          ),
          if (model.description != null)
            Container(
              margin: marginBottom12,
              child: Text(
                model.description!,
                style: bodyTextStyle,
              ),
            ),
          Container(
            margin: marginBottom24,
            child: ReadMoreButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.post);
              },
            ),
          ),
          divider,
        ],
      ),
    );
  }
}
