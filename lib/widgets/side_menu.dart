import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      _controller.closeEndDrawer();
                    },
                  ),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                ),
              ),
            ],
          ),
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
