import 'package:flutter/material.dart';

class card_img_ins extends StatelessWidget {
  final String img_url;
  final String name;

  const card_img_ins({super.key, required this.img_url, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      //shadowColor: Colors.white,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(img_url),
            placeholder: AssetImage('assets/images/lupa_carga.gif'),
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          if(name != '')
          Container(
            alignment: AlignmentDirectional.center,
            padding: EdgeInsets.all(10),
            child: Text(name, style: TextStyle(fontSize: 15)),
          ),
        ],
      ),
    );
  }
}
