import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader
          (accountName: Text('Fatih'),
           accountEmail: Text('xxx@gmail.com'),
        currentAccountPicture: CircleAvatar(
          child: ClipOval()
        )
          ,)
       ,ListTile(
         leading: Icon (Icons.favorite),
          title: Text('Favorites'),
          onTap: ()=> null,
       ),
          ListTile(
    leading: Icon (Icons.people),
    title: Text('Friends'),
    onTap: ()=> null,
    ),
    ListTile(
    leading: Icon (Icons.notifications),
    title: Text('Requests'),
    onTap: ()=> null,
    ),
    ListTile(
    leading: Icon (Icons.settings),
    title: Text('Settings'),
    onTap: ()=> null,
    ),
    ListTile(
    leading: Icon (Icons.exit_to_app),
    title: Text('Exit'),
    onTap: ()=> null,
    ),
      ],
    )
    );
  }
}
