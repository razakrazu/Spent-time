import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'),centerTitle: true,),
      body: Column(children: [
        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.share), label: Text('Share')),
        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.restart_alt), label: Text('Rest')),
        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.share), label: Text('Share')),
        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.share), label: Text('Share'),),
        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.share), label: Text('Share')),
      
      ],),
    );
  }
}