import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';
import 'package:this_is_november_blog/models/page.dart';
import 'package:this_is_november_blog/pages/home/home.dart';
import 'package:this_is_november_blog/widgets/header.dart';
import 'package:this_is_november_blog/widgets/side_menu.dart';
import 'package:this_is_november_blog/widgets/footer.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      endDrawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomePage(PageModel(0, PageModel.sample))),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
