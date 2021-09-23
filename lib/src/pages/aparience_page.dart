import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ios_hdm/src/themes/themechanger.dart';

class ApariencePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>( context );

    return Scaffold(
      appBar: AppBar(
        title: Text('Apariencia'),
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.lightbulb_outline, color: Colors.blue ),
            title: Text('Dark Mode'),
            trailing: Switch.adaptive(
              value: appTheme.darkTheme,
              activeColor: Colors.blue,
              onChanged: ( value ) => appTheme.darkTheme = value
            ),
          ),

          ListTile(
            leading: Icon( Icons.add_to_home_screen, color: Colors.blue ),
            title: Text('Custom Theme'),
            trailing: Switch.adaptive(
              value: appTheme.customTheme,
              activeColor: Colors.blue,
              onChanged: ( value ) => appTheme.customTheme = value
            ),
          )

        ],
      )
    );

  }
}
