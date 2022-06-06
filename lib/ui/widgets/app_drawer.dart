import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 50,
              ),
              SizedBox(height: 10),
              Text("Menu Bibliothèque"),
            ],
          )),
          DrawerItem("Home","/",Icon(Icons.home)),
          DrawerItem("Livres","/livres",Icon(Icons.book)),
          DrawerItem("Adhérents","/adherents",Icon(Icons.person)),
        ],
      ),
    );
  }
}
