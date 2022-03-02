import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/constants/typography.dart';
import 'package:this_is_november_blog/helpers/reponsive.dart';
import 'package:this_is_november_blog/models/post.dart';
import 'package:this_is_november_blog/pages/post/components/author.dart';
import 'package:this_is_november_blog/widgets/categories.dart';
import 'package:this_is_november_blog/widgets/divider.dart';
import 'package:this_is_november_blog/widgets/image_wrapper.dart';
import 'package:this_is_november_blog/widgets/other_posts.dart';
import 'package:this_is_november_blog/widgets/post_navigation.dart';
import 'package:this_is_november_blog/widgets/search.dart';
import 'package:this_is_november_blog/widgets/tag.dart';
import 'package:this_is_november_blog/widgets/text.dart';

class PostView extends StatelessWidget {
  final PostModel model;
  const PostView(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Column(
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextBodySecondary(text: model.date),
                ),
                _markdownView(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: TagWrapper(tags: [
                    Tag(tag: "Writing"),
                    Tag(tag: "Photography"),
                    Tag(tag: "Development")
                  ]),
                ),
                ...authorSection(
                    imageUrl: "assets/images/avatar_default.png",
                    name: "Type Pages",
                    bio:
                        "Mattis molestie a iaculis at erat pellentesque adipiscing commodo. Suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Sed euismod nisi porta lorem. Aliquet nec ullamcorper sit amet risus nullam eget felis eget."),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: const PostNavigation(),
                ),
                divider,
              ],
            ),
          ),
          if (Responsive.isDesktop(context))
            const SizedBox(width: kDefaultPadding / 2),
          //Sidebar
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: Column(
                children: const [
                  Search(),
                  SizedBox(height: kDefaultPadding),
                  Categories(),
                  SizedBox(height: kDefaultPadding),
                  OtherPosts(),
                ],
              ),
            ),
        ],
      ),
    );
  }

  _markdownView() {
    return FutureBuilder(
      future: rootBundle.loadString(model.content),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Container(
            margin: marginBottom40,
            child: MarkdownBody(data: snapshot.data!),
          );
        }

        return const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        );
      },
    );
  }
}
