import 'package:flutter/material.dart';
import '../screens/screens.dart';
class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => HomeScreen(),
    '/lib': (BuildContext context) => LibScreen(),
    '/pdf_list': (BuildContext context) => pdf_listScreen(),
    '/about': (BuildContext context) => AboutScreen(),
    '/hector': (BuildContext context) => HectorScreen(),
    '/jose': (BuildContext context) => JoseScreen(),
  };
}
