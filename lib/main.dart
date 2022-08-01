import 'package:dummyflutterapps/pages/homepage.dart';
import 'package:dummyflutterapps/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: homePage(),
      routes: {
        "/": (context) => loginpage(),
        "/loginpage": (context) => homePage()
      },
    );
  }
}
