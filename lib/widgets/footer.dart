import 'package:flutter/material.dart';
import 'package:this_is_november_blog/helpers/utils.dart';
import 'package:this_is_november_blog/widgets/text.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Align(
        alignment: Alignment.center,
        child: TextBody(text: "© ${currentYear()} by november"),
      ),
    );
  }
}
