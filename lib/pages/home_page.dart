import 'package:flutter/material.dart';
import 'package:flutter_application_cetalock_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "Kuldeep";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(child: Container(child: Text('Demo Project $days $name'))),
      drawer: MyDrawer(),
    );
  }
}
