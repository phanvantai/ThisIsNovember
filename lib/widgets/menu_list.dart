import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/constants/typography.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';

class MenuList extends StatelessWidget {
  MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        context.read<MenuController>().menuItems.length,
        (index) => MenuItem(
          text: context.read<MenuController>().menuItems[index],
          isActive: index == context.read<MenuController>().selectedIndex,
          press: () => context.read<MenuController>().setMenuIndex(index),
        ),
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  const MenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.3);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        child: Text(
          widget.text,
          style:
              buttonTextStyle /*TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          )*/
          ,
        ),
      ),
    );
  }
}
