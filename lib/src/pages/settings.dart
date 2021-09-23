import 'package:flutter/material.dart';

import 'package:ios_hdm/src/providers/menu.dart';
import 'package:ios_hdm/src/utils/icono_string.dart';

class Settings extends StatelessWidget {

  // final opciones = ['Apariencia', 'Comportamiento', 'Almacenamiento', 'toDus'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Settings'),
        centerTitle: true,
        
      ),
      
      body: _lista(),

    );
  }

  Widget _lista() {

    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
        
        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      },
    );

  }


  List<Widget> _listaItems( data, BuildContext context ) {

    final List<Widget> opciones = [];

    data.forEach( (opt) {
      
      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        leading: getIcon( opt['icon'] ),
        trailing: Icon( Icons.keyboard_arrow_right_rounded),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta'] );
        },
      );

      opciones..add( widgetTemp )
              ..add( Divider() );
      
    });
 
    return opciones;


  }
}
