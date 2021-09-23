import 'package:flutter/material.dart';

import 'package:ios_hdm/src/routes/routes.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: getApplicationRoutes(),
    );
  }
}
