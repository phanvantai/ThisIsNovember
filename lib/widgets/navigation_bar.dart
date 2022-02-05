import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/controllers/menu_controller.dart';
import 'package:this_is_november_blog/helpers/reponsive.dart';
import 'package:this_is_november_blog/widgets/web_menu.dart';

class MenuBar extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginBottom24,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName)),
            child: Text("This is November",
                style: GoogleFonts.montserrat(
                    color: kPrimaryColorText,
                    fontSize: 30,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500)),
          ),
          const Spacer(),
          if (Responsive.isDesktop(context)) WebMenu(),
          if (!Responsive.isDesktop(context)) const Spacer(),
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                _controller.openOrCloseDrawer();
              },
            ),
        ],
      ),
    );
  }
}