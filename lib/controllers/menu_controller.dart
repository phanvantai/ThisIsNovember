import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  List<String> get menuItems => ["TECHS", "BOOKS", "FILMS"];
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  int get selectedIndex => _selectedIndex;

  void controlMenu() {
    if (_scaffoldKey.currentState?.isEndDrawerOpen != true) {
      _scaffoldKey.currentState?.openEndDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
