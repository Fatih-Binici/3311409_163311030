import 'package:flutter/material.dart';
import 'package:login/components/my_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home Page'),
      ),
    );
  }
}

