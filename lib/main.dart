import 'package:er_app/router/routes.dart';
import 'package:er_app/themes/themes_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:AppRoutes.routes,
      initialRoute: '/home',
      theme: ThemesApp.darktheme
      );

  }
}
