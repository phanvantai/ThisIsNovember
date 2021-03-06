import 'package:flutter/material.dart';
import 'package:this_is_november_blog/core/constants/constants.dart';
import 'package:this_is_november_blog/core/helpers/reponsive.dart';
import 'package:this_is_november_blog/web/models/page.dart';
import 'package:this_is_november_blog/web/pages/home/components/post_card.dart';
import 'package:this_is_november_blog/web/widgets/categories.dart';
import 'package:this_is_november_blog/web/widgets/divider.dart';
import 'package:this_is_november_blog/web/widgets/other_posts.dart';
import 'package:this_is_november_blog/web/widgets/page_navigation.dart';
import 'package:this_is_november_blog/web/widgets/search.dart';

class HomeView extends StatelessWidget {
  final PageModel model;

  const HomeView(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
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
      ),
    );
  }
}
