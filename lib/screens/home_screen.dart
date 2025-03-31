import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title:Text('EReader'),
      ),
      body: ListView
      (
        children: 
        [
          ListTile
          (
            title: Text('Biblioteca',style: TextStyle(fontSize:25),),
            leading: Icon(Icons.bookmark, color:Colors.amber[400]),
            trailing: Icon(Icons.arrow_forward_ios , color:Colors.amber[400]),
            onTap:()
            {
              Navigator.pushNamed(context, '/lib');
            },
          ),
          ListTile
          (
            title: Text('Acerca de Nosotros',style: TextStyle(fontSize:25),),
            leading: Icon(Icons.info , color:Colors.amber[400]),
            trailing: Icon(Icons.arrow_forward_ios , color:Colors.amber[400]),
            onTap:()
            {
              Navigator.pushNamed(context, '/about');
            },
          )
        ]
      ),
      );
  }
}