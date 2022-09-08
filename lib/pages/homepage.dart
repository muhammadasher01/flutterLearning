// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:dummyflutterapps/models/MainItemsModel.dart';
import 'package:dummyflutterapps/widgets/Drawer.dart';
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
      body: (CatelogModel.items.isNotEmpty)
          ? GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 50),
              itemBuilder: (context, itemC ount) {
                final Item item = CatelogModel.items[itemCount];

                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: GridTile(
                    header: Text(item.name),
                    child: Image.network(item.image),
                    footer: Text(item.price.toString()),
                  ),
                );
              },
              itemCount: CatelogModel.items.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
