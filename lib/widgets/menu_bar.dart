import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_is_november_blog/constants/color.dart';
import 'package:this_is_november_blog/constants/typography.dart';
import 'package:this_is_november_blog/routing/routes.dart';

/// Menu/Navigation Bar
///
/// A top menu bar with a text or image logo and
/// navigation links. Navigation links collapse into
/// a hamburger menu on screens smaller than 400px.
class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text("This is November",
                    style: GoogleFonts.montserrat(
                        color: textPrimary,
                        fontSize: 30,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w500)),
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.popUntil(context,
                            ModalRoute.withName(Navigator.defaultRouteName)),
                        child: Text(
                          "HOME",
                          style: buttonTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "PORTFOLIO",
                          style: buttonTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, Routes.style),
                        child: Text(
                          "STYLE",
                          style: buttonTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "ABOUT",
                          style: buttonTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "CONTACT",
                          style: buttonTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 1,
            margin: const EdgeInsets.only(bottom: 30),
            color: const Color(0xFFEEEEEE)),
      ],
    );
  }
}
