import 'package:flutter/material.dart';

class StoragePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Almacenamiento'),
      ),

      body: ListView(
        children: <Widget>[

          ListTile(
            title: Text('Ruta de almacenamiento:'),
            subtitle: Text(''),
            trailing: Icon( Icons.search_rounded ),
            onTap: () {

            },
          ),

          ListTile(

          ),

        ],
      )
    );

    
    
  }
}