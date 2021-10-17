import 'package:flutter/material.dart';

import 'package:ios_hdm/src/pages/home.dart';
import 'package:ios_hdm/src/pages/aparience_page.dart';
import 'package:ios_hdm/src/pages/behavior_page.dart';
import 'package:ios_hdm/src/pages/storage_page.dart';
import 'package:ios_hdm/src/pages/todus_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder>{
        
    '/'          : ( BuildContext context ) => HomePage(),
    'aparience'  : ( BuildContext context ) => ApariencePage(),
    'behavior'   : ( BuildContext context ) => BehaviorPage(),
    'storage'    : ( BuildContext context ) => StoragePage(storage: SetPath()),
    'todus'      : ( BuildContext context ) => TodusPage(),

  };

}

