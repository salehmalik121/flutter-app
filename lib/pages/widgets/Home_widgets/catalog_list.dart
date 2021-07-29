import 'package:flutter/material.dart';
import 'package:learning/models/models.dart';
import 'package:learning/pages/home_detail.dart';
// ignore: unused_import
import 'package:learning/pages/utis/routes.dart';
import 'package:learning/pages/widgets/Home_widgets/catalog_item.dart';

class Cataloglist extends StatelessWidget {
  const Cataloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Catalogmodel.items.length,
        itemBuilder: (context, index) {
          final catalog = Catalogmodel.getbypos(index);
          return InkWell(
            child: Catalogitem(catalog: catalog),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Details(catalog: catalog)));
            },
          );
        });
  }
}
