import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

String currentYear() {
  return DateTime.now().year.toString();
}
