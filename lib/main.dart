import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          child: Center(
              child: Text(
                "This is demo app",
                style: TextStyle(
            color: Colors.black,
                  backgroundColor: Colors.amber,
                  fontSize: 20
          ),)),
        ),
      ),
    );
  }
}
