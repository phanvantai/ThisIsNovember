import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_is_november_blog/core/constants/constants.dart';

class ReadMoreButton extends StatelessWidget {
  final Function onPressed;

  const ReadMoreButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hover = false;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onHover: (event) => setState(() => hover = true),
        onExit: (event) => setState(() => hover = false),
        child: ElevatedButton(
          onPressed: onPressed as void Function()?,
          //highlightedBorderColor: kPrimaryColorText,
          //hoverColor: kPrimaryColorText,
          //borderSide: const BorderSide(color: kPrimaryColorText, width: 2),
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "READ MORE",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  fontSize: 14,
                  color: hover ? Colors.white : kPrimaryColorText,
                  letterSpacing: 1),
            ),
          ),
        ),
      );
    });
  }
}
