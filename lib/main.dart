import 'package:flutter/material.dart';

import 'src/app.dart';
import 'package:provider/provider.dart';
import 'src/themes/themechanger.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => new ThemeChanger(),
    child: MyApp()
  )
);