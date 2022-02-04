import 'package:flutter/material.dart';
import 'package:this_is_november_blog/models/page.dart';
import 'package:this_is_november_blog/pages/home/post_item.dart';
import 'package:this_is_november_blog/widgets/divider.dart';
import 'package:this_is_november_blog/widgets/footer.dart';
import 'package:this_is_november_blog/widgets/menu_bar.dart';
import 'package:this_is_november_blog/widgets/page_navigation.dart';

class HomePage extends StatelessWidget {
  final PageModel model;

  const HomePage(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              const MenuBar(),
              ...model.list.map((e) {
                return Column(children: [
                  PostItemView(e),
                  divider,
                ]);
              }).toList(),
              if (model.next == null || model.previous == null) ...[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 80),
                  child: PagesNavigation(model),
                ),
                divider,
              ],
              const Footer(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
