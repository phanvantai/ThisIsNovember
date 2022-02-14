import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:this_is_november_blog/constants/constants.dart';
import 'package:this_is_november_blog/widgets/sidebar_container.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Type Here ...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          // border: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(kDefaultPadding / 2),
          //   ),
          //   borderSide: BorderSide(color: Color(0xFFCCCCCC)),
          // ),
        ),
        cursorColor: kPrimaryColorText,
      ),
    );
  }
}
