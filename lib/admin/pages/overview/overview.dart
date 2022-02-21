import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/controllers/admin_menu_controller.dart';
import 'package:this_is_november_blog/admin/widgets/custom_text.dart';
import 'package:this_is_november_blog/helpers/reponsive.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                margin:
                    EdgeInsets.only(top: Responsive.isMobile(context) ? 56 : 6),
                child: CustomText(
                  text: AdminMenuController().activeItem,
                  size: 24,
                  weight: FontWeight.bold,
                )),
          ],
        ),
        Expanded(
            child: ListView(
          children: [
            // if (ResponsiveWidget.isLargeScreen(context) ||
            //     ResponsiveWidget.isMediumScreen(context))
            //   if (ResponsiveWidget.isCustomSize(context))
            //     OverviewCardsMediumScreen()
            //   else
            //     OverviewCardsLargeScreen()
            // else
            //   OverviewCardsSmallScreen(),
            // if (!ResponsiveWidget.isSmallScreen(context))
            //   RevenueSectionLarge()
            // else
            //   RevenueSectionSmall(),

            //   AvailableDriversTable(),
          ],
        ))
      ],
    );
  }
}
