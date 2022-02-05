import 'package:flutter/material.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/helpers/reponsive.dart';
import 'package:this_is_november_blog/models/page.dart';
import 'package:this_is_november_blog/pages/home/components/post_card.dart';
import 'package:this_is_november_blog/widgets/categories.dart';
import 'package:this_is_november_blog/widgets/divider.dart';
import 'package:this_is_november_blog/widgets/other_posts.dart';
import 'package:this_is_november_blog/widgets/page_navigation.dart';
import 'package:this_is_november_blog/widgets/search.dart';

class HomeBody extends StatelessWidget {
  final PageModel model;

  const HomeBody(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              ...List.generate(
                PageModel.sample.length,
                (index) => PostCard(model: PageModel.sample[index]),
              ),
              if (model.next == null || model.previous == null) ...[
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: PagesNavigation(model),
                ),
                divider,
              ],
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
    );
  }
}
