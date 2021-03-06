import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:this_is_november_blog/core/constants/constants.dart';
import 'package:this_is_november_blog/core/helpers/reponsive.dart';
import 'package:this_is_november_blog/web/controllers/menu_controller.dart';
import 'package:this_is_november_blog/web/widgets/menu_list.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        if (Responsive.isDesktop(context)) const MenuList(),
        if (!Responsive.isDesktop(context)) const Spacer(),
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: context.read<MenuController>().controlMenu,
          ),
      ],
    );
  }
}
