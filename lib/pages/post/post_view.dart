import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';
import 'package:this_is_november_blog/models/post.dart';
import 'package:this_is_november_blog/pages/post/post_body.dart';
import 'package:this_is_november_blog/widgets/header.dart';
import 'package:this_is_november_blog/widgets/footer.dart';
import 'package:this_is_november_blog/widgets/side_menu.dart';

class PostView extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final PostModel model;
  PostView(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller.addScaffoldKey(_key);
    return Scaffold(
      key: _key,
      endDrawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(
                child: PostBody(model),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
