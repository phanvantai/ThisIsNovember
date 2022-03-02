import 'package:flutter/material.dart';
import 'package:this_is_november_blog/admin/pages/authentication/authentication.dart';

class LoginPage extends Page {
  const LoginPage() : super(key: const ValueKey('LoginPage'));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return const AuthenticationPage();
      },
    );
  }
}
