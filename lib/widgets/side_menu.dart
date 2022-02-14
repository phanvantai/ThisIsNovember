import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(),
            ),
            ...List.generate(
              context.read<MenuController>().menuItems.length,
              (index) => DrawerItem(
                isActive: index == context.read<MenuController>().selectedIndex,
                title: context.read<MenuController>().menuItems[index],
                press: () {
                  context.read<MenuController>().setMenuIndex(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColorText,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(color: isActive ? kPrimaryColorText : Colors.grey),
        ),
      ),
    );
  }
}
