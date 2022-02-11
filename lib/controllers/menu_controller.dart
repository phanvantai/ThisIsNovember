import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  final RxInt _selectedIndex = 0.obs;
  List<GlobalKey<ScaffoldState>> _scaffoldKey = [];

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ["HOME" /*, "TECHS", "BOOKS", "FILMS", "ABOUT", "CONTACT"*/];
  void addScaffoldKey(GlobalKey<ScaffoldState> key) {
    _scaffoldKey.add(key);
  }

  void openOrCloseDrawer() {
    for (var element in _scaffoldKey) {
      if (element.currentState?.isDrawerOpen != true) {
        element.currentState?.openEndDrawer();
      } else {
        element.currentState?.openDrawer();
      }
    }
  }

  void closeEndDrawer() {
    for (var element in _scaffoldKey) {
      element.currentState?.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
