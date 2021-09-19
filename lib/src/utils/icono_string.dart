import 'package:flutter/material.dart';

final _icons = <String, IconData> {

  'view_carousel'             : Icons.view_carousel,
  'accessibility_new_rounded' : Icons.accessibility_new_rounded,
  'storage_rounded'           : Icons.storage_rounded,
  'message'                   : Icons.message,

};

Icon getIcon( String nombreIcono ) {

  return Icon( _icons[nombreIcono], color: Colors.blue );

}