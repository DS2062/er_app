import 'package:er_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri urlgith = Uri.parse('https://github.com/DS2062');

class HectorScreen extends StatelessWidget {
   
  const HectorScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title:Text('Hector Freytes'),
      ),
      body: ListView(
        children:[
          ListTile(
            title: card_img_ins
          (
           img_url: 'https://avatars.githubusercontent.com/u/104336137?s=400&u=4c48882b06c3e0aa64ef432464f823d3f9263f84&v=4',
           name: 'https://github.com/DS2062'
          ),
          onTap: () 
          {
            launchUrl(urlgith); //? por algun motivo no abre el enlace aunque deberia
          },
          )
        ],
      ),
    );
  }
}