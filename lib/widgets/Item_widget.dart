import 'package:dummyflutterapps/models/MainItemsModel.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
          print("${item.name} is pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
          textScaleFactor: 1.9,
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
