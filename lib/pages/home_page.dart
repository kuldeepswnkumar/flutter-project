import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Kuldeep";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Title")),
      body: Center(child: Container(child: Text('Demo Project $days $name'))),
      drawer: Drawer(),
    );
  }
}
