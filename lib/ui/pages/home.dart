import 'package:examen_flutter/ui/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: Text("La Bibliothèque Publique d'Information BPI"),
        ),
      backgroundColor: Colors.grey,
    );
  }

}