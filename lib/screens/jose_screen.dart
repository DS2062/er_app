import 'package:er_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri urlgitj = Uri.parse('https://github.com/jgchgo99');

class JoseScreen extends StatelessWidget {
   
  const JoseScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title:Text('Jose Chacon'),
      ),
      body: ListView(
        children:[
          ListTile(
            title: card_img_ins
          (
           img_url: 'https://avatars.githubusercontent.com/u/125995633?v=4',
           name: 'https://github.com/jgchgo99'
          ),
          onTap: () 
          {
            launchUrl(urlgitj); //? por algun motivo no abre el enlace aunque deberia
          },
          )
        ] ,
      ),
    );
  }
}