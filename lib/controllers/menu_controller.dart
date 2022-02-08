import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  List<GlobalKey<ScaffoldState>> _scaffoldKey = [];

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ["HOME" /*, "TECHS", "BOOKS", "FILMS", "ABOUT", "CONTACT"*/];
  void addScaffoldKey(GlobalKey<ScaffoldState> key) {
    _scaffoldKey.add(key);
  }

  void openOrCloseDrawer() {
    _scaffoldKey.forEach((element) {
      if (element.currentState?.isDrawerOpen != true) {
        element.currentState?.openEndDrawer();
      } else {
        element.currentState?.openDrawer();
      }
    });
  }

  void closeEndDrawer() {
    _scaffoldKey.forEach((element) {
      element.currentState?.openDrawer();
    });
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
