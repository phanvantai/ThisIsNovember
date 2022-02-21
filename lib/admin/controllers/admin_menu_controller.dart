import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/constants/constants.dart';
import 'package:this_is_november_blog/routing/routes.dart';

class AdminMenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var activeItem = Routes.overviewPageDisplayName;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  var hoverItem = "";

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  changeActiveItemTo(String itemName) {
    activeItem = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem = itemName;
  }

  isHovering(String itemName) => hoverItem == itemName;

  isActive(String itemName) => activeItem == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case Routes.overviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case Routes.driversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case Routes.clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case Routes.authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
