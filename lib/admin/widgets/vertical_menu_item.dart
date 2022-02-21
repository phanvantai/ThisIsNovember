import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/constants/constants.dart';
import 'package:this_is_november_blog/admin/controllers/admin_menu_controller.dart';
import 'package:this_is_november_blog/admin/widgets/custom_text.dart';

class VertticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  const VertticalMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? AdminMenuController().onHover(itemName)
            : AdminMenuController().onHover("not hovering");
      },
      child: Container(
        color: AdminMenuController().isHovering(itemName)
            ? lightGrey.withOpacity(.1)
            : Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: AdminMenuController().isHovering(itemName) ||
                  AdminMenuController().isActive(itemName),
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Container(
                width: 3,
                height: 72,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: AdminMenuController().returnIconFor(itemName),
                    ),
                    if (!AdminMenuController().isActive(itemName))
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: AdminMenuController().isHovering(itemName)
                              ? Colors.white
                              : lightGrey,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: Colors.white,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
