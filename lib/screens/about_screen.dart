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
           title: Image
           (
            image:AssetImage('assets/images/logo_about.png'), 
            height: 215,
            width: double.infinity,
            fit: BoxFit.fitWidth,
           ),           
          ),
          //Text('hola'),
          ListTile
          (
            title: Center(child: Text('EReader', style: TextStyle(fontSize: 35),),),
            subtitle: Text('Los caracteres arriba y abajo de las siglas "ER" representan el nombre de los autores bajo la tipografia "Symbol". Las siglas "ER" son acronimos ingleses para "Electronic Reader".', 
                            style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
          ),
          ListTile
          (
           title: FadeInImage
           (
            image:NetworkImage('https://cbx-prod.b-cdn.net/COLOURBOX52369295.jpg?width=800&height=800&quality=70'), 
            placeholder:AssetImage('assets/images/lupa_carga.gif'),
            height: 150,
            width: double.infinity,
            fit: BoxFit.scaleDown,
           ),
           subtitle: Text('El color amarillo en el logo es una referencia directa a los antiguos pergaminos egipcios de papiro.',
           style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),           
          ),
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