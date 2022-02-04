import 'package:flutter/material.dart';
import 'package:this_is_november_blog/helpers/utils.dart';
import 'package:this_is_november_blog/widgets/text.dart';

class Footer extends StatelessWidget {
  // TODO Add additional footer components (i.e. about, links, logos).
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextBody(text: "© ${currentYear()} by november 2nd"),
      ),
    );
  }
}
