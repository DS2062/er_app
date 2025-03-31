import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
   
  const AboutScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title:Text('Acerca de Nosotros'),
      ),
      body: ListView(
        children:
        [
          ListTile
          (
            title: Text('Hector Freytes',style: TextStyle(fontSize:25),),
            leading: Icon(Icons.info_outline, color:const Color.fromARGB(255, 219, 198, 4)),
            trailing: Icon(Icons.arrow_forward_ios , color:const Color.fromARGB(255, 219, 198, 4)),
            onTap:()
            {
              Navigator.pushNamed(context, '/hector');
            },
          ),
          ListTile
          (
            title: Text('Jose Chacon',style: TextStyle(fontSize:25),),
            leading: Icon(Icons.info_outline, color:const Color.fromARGB(255, 219, 198, 4)),
            trailing: Icon(Icons.arrow_forward_ios , color:const Color.fromARGB(255, 219, 198, 4)),
            onTap:()
            {
              Navigator.pushNamed(context, '/jose');
            },
          ),

        ]
      ),

    );
  }
}