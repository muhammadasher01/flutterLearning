import 'package:dummyflutterapps/models/MainItemsModel.dart';
import 'package:dummyflutterapps/widgets/Drawer.dart';
import 'package:dummyflutterapps/widgets/Item_widget.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: ListView.builder(
              itemCount: CatelogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatelogModel.items[index]);
              }),


      drawer: MyDrawer(),
    );
  }
}
