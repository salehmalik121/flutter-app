import 'package:flutter/material.dart';
import 'package:learning/models/models.dart';
// ignore: unused_import

class Itemwidget extends StatelessWidget {
  final Items items;

  const Itemwidget({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("\ ${items.name} pressed");
        },
        leading: Image.network(
          items.image,
        ),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(
          "\$${items.price}",
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
