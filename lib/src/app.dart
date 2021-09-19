import 'package:flutter/material.dart';

import 'pages/home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        
        '/'    : ( BuildContext context ) => HomePage(),



      },
    );
  }
}
