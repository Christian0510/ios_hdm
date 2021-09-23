import 'package:flutter/material.dart';

import 'package:ios_hdm/src/themes/themechanger.dart';
import 'package:provider/provider.dart';
import 'package:ios_hdm/src/routes/routes.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(context) {

    final currentTheme = Provider.of<ThemeChanger>( context ).currentTheme;

    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      routes: getApplicationRoutes(),
    );
  }
}
