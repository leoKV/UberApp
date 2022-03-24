import 'package:flutter/material.dart';
import 'package:uber_gds0351/pages/home/home_page.dart';
import 'package:uber_gds0351/pages/login/login_page.dart';
import 'package:uber_gds0351/pages/register/register_page.dart';
import 'package:uber_gds0351/pages/map/map_page.dart';
import 'package:uber_gds0351/pages/service/service_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegisterPage(),
        'map': (BuildContext context) => MapPage(),
        'service': (BuildContext context) => ServicePage(),
      },
    );
  }
}
