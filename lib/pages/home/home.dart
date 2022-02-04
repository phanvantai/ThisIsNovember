import 'package:flutter/material.dart';
import 'package:this_is_november_blog/pages/home/post_item.dart';
import 'package:this_is_november_blog/widgets/divider.dart';
import 'package:this_is_november_blog/widgets/footer.dart';
import 'package:this_is_november_blog/widgets/menu_bar.dart';
import 'package:this_is_november_blog/widgets/page_navigation.dart';

// TODO Replace with object model.
const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  const MenuBar(),
                  const PostItemView(
                      imageUrl:
                          "assets/images/paper_flower_overhead_bw_w1080.jpg",
                      title: listItemTitleText,
                      description: listItemPreviewText),
                  divider,
                  const PostItemView(
                      imageUrl:
                          "assets/images/iphone_cactus_tea_overhead_bw_w1080.jpg",
                      title: listItemTitleText,
                      description: listItemPreviewText),
                  divider,
                  const PostItemView(
                      imageUrl:
                          "assets/images/typewriter_overhead_bw_w1080.jpg",
                      title: listItemTitleText,
                      description: listItemPreviewText),
                  divider,
                  const PostItemView(
                      imageUrl:
                          "assets/images/coffee_paperclips_pencil_angled_bw_w1080.jpg",
                      title: listItemTitleText,
                      description: listItemPreviewText),
                  divider,
                  const PostItemView(
                      imageUrl:
                          "assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg",
                      title: listItemTitleText,
                      description: listItemPreviewText),
                  divider,
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 80),
                    child: PagesNavigation(),
                  ),
                  divider,
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
