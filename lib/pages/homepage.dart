import 'package:dummyflutterapps/widgets/Drawer.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: Center(
        child: Text(
          "This is demo app",
          style: TextStyle(
              color: Colors.black, backgroundColor: Colors.amber, fontSize: 30),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
