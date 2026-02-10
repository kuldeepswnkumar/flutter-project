import 'package:flutter/material.dart';
import 'package:flutter_application_cetalock_1/pages/home_page.dart';
import 'package:flutter_application_cetalock_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Data types
    // int days = 30;
    // String name = "Kuldeep";
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30.5;

    // var day = "Monday";
    // const pi = 3.14;
    // final
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: "/home",
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
