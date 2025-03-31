import 'package:flutter/material.dart';

class LibScreen extends StatelessWidget {
   
  const LibScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        title:Text('Biblioteca'),
      ),
      body: Center(
        child: Text('LibScreen'),
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: (){},
        child: Icon(Icons.sync),
        
      
      ),
    );
  }
}