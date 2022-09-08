import 'dart:convert';

import 'package:dummyflutterapps/models/MainItemsModel.dart';
import 'package:dummyflutterapps/widgets/Drawer.dart';
import 'package:dummyflutterapps/widgets/Item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedFile = jsonDecode(catalogjson);
    var productData = decodedFile["products"];

    CatelogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
          ? ListView.builder(
              itemCount: CatelogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatelogModel.items[index]);
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
