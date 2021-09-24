import 'package:flutter/material.dart';

import 'settings.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('HDM'),
          centerTitle: true,
          actions: [
            TextButton(

              child: Icon( Icons.settings, color: Colors.white, size: 30.0, ),
              onPressed: () {
                final route = MaterialPageRoute(builder: (context)=> Settings());
                Navigator.push(context, route);

              },
            ),
          ],
        ),

        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _downloadTasks()
          ],
        ),
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones()
    );
  }

    Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          heroTag: null,
          child: Icon(Icons.file_copy), 
          onPressed: () {

          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          heroTag: null,
          child: Icon(Icons.add), 
          onPressed: () {

          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  Widget _downloadTasks() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.download, color: Colors.black ),
            title: Text('Titulo de prueba'),
          )
        ],
      ),
    );
  }
}
